from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

print("🤖 BOT WHATSAPP INICIADO")
print("1. Se va a abrir WhatsApp Web")
print("2. Escanea el QR con tu cel")
print("3. El bot empezará a responder 'hola'\n")

options = Options()
options.binary_location = "/data/data/com.termux/files/usr/bin/chromium"
options.add_argument("--headless=new")
options.add_argument("--no-sandbox")
options.add_argument("--disable-dev-shm-usage")

driver = webdriver.Chrome(options=options)
driver.get("https://web.whatsapp.com")

input("Escanea el QR y presiona ENTER aquí...")

print("Bot activo! Escribe 'hola' a tu WhatsApp para probar")

mensajes_vistos = set()

while True:
    try:
        chats = driver.find_elements(By.CSS_SELECTOR, "div[role='gridcell']")
        for chat in chats[:5]:
            chat.click()
            time.sleep(1)
            
            mensajes = driver.find_elements(By.CSS_SELECTOR, "div._amk4._amk5")
            if mensajes:
                ultimo = mensajes[-1].text
                
                if "hola" in ultimo.lower() and ultimo not in mensajes_vistos:
                    mensajes_vistos.add(ultimo)
                    
                    caja = driver.find_element(By.CSS_SELECTOR, "div[contenteditable='true'][data-tab='10']")
                    caja.send_keys("Hola! Soy el bot de Aldahir 🤖\nEstoy corriendo desde Termux en mi cel")
                    caja.send_keys(Keys.ENTER)
                    print(f"Respondí a: {ultimo}")
        
        time.sleep(3)
    except:
        time.sleep(3)
