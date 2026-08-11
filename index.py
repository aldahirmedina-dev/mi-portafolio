from flask import Flask, render_template_string
import time

app = Flask(__name__)

HTML = """
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portafolio Dark Mode - [Tu Nombre]</title>
    <style>
        :root {
            --bg: #0a0a0a;
            --text: #e0e0e0;
            --accent: #00ff88;
            --card: #1a1a1a;
        }
        body {
            background: var(--bg);
            color: var(--text);
            font-family: 'Fira Code', 'Courier New', monospace;
            margin: 0;
            padding: 40px 20px;
            transition: 0.3s;
        }
        .light-mode {
            --bg: #f5f5f5;
            --text: #111;
            --accent: #0077ff;
            --card: #ffffff;
        }
        .container { max-width: 800px; margin: auto; }
        h1 { color: var(--accent); font-size: 2.5em; border-bottom: 2px solid var(--accent); padding-bottom: 10px; }
        .card {
            background: var(--card);
            padding: 20px;
            border-radius: 12px;
            margin: 20px 0;
            border-left: 4px solid var(--accent);
            box-shadow: 0 0 15px rgba(0,255,136,0.1);
        }
        .typing {
            border-right: 3px solid var(--accent);
            white-space: nowrap;
            overflow: hidden;
            animation: typing 3s steps(40), blink 0.7s infinite;
        }
        @keyframes typing { from { width: 0 } to { width: 100% }
        @keyframes blink { 50% { border-color: transparent }
        button {
            background: var(--accent);
            color: var(--bg);
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            font-family: inherit;
        }
        .glow { text-shadow: 0 0 10px var(--accent); }
    </style>
</head>
<body>
    <div class="container">
        <button onclick="document.body.classList.toggle('light-mode')">🌓 Cambiar Tema</button>
        
        <h1 class="glow">Hola, soy [Tu Nombre]</h1>
        <p class="typing">> Desarrollador | Creando cosas épicas en Termux</p>

        <div class="card">
            <h2>🚀 Sobre Mí</h2>
            <p>Programador nocturno. Café = Código. Debug = Vida.</p>
        </div>

        <div class="card">
            <h2>💻 Mis Skills</h2>
            <p>Python | Flask | HTML | CSS | Termux Hacks</p>
        </div>

        <div class="card">
            <h2>📊 Stats del Programador</h2>
            <p>Días sin dormir: 127</p>
            <p>Errores resueltos hoy: 42</p>
        </div>
    </div>

    <script>
        console.log("%c Bienvenido al modo desarrollador ", "background: #00ff88; color: #000; font-size: 16px");
    </script>
</body>
</html>
"""

@app.route('/')
def home():
    return render_template_string(HTML)

if __name__ == '__main__':
    # PUERTO CAMBIADO A 5002
    app.run(host='0.0.0.0', port=5002)
