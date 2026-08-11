const { default: makeWASocket, DisconnectReason, useMultiFileAuthState } = require('@whiskeysockets/baileys');
const qrcode = require('qrcode-terminal');
const pino = require('pino');

async function conectarBot() {
    const { state, saveCreds } = await useMultiFileAuthState('auth_info')
    const sock = makeWASocket({
        logger: pino({ level: 'warn' }),
        printQRInTerminal: true,
        auth: state
    })

    sock.ev.on('creds.update', saveCreds)
    
    sock.ev.on('connection.update', (update) => {
        const { connection, lastDisconnect, qr } = update
        if(qr) qrcode.generate(qr, {small: true})
        
        if(connection === 'close') {
            const shouldReconnect = (lastDisconnect.error)?.output?.statusCode!== DisconnectReason.loggedOut
            console.log('Reconectando...', shouldReconnect)
            if(shouldReconnect) conectarBot()
        } else if(connection === 'open') {
            console.log('🤖 BOT CONECTADO CORRECTAMENTE')
        }
    })

    sock.ev.on('messages.upsert', async (m) => {
        const msg = m.messages[0]
        if(!msg.message || msg.key.fromMe) return
        
        const texto = msg.message.conversation || msg.message.extendedTextMessage?.text
        const remitente = msg.key.remoteJid
        
        console.log('Mensaje:', texto)
        
        if(texto.toLowerCase() === 'hola') {
            await sock.sendMessage(remitente, { 
                text: `Hola! Soy el bot de Aldahir 🤖\nEstoy corriendo desde Termux\n\nEscribe:\n1 - Info\n2 - Precios\n3 - Contacto` 
            })
        }
        if(texto === '1') {
            await sock.sendMessage(remitente, { text: 'Soy un bot de WhatsApp hecho en Termux por Aldahir 🚀' })
        }
    })
}

conectarBot()

