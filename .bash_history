cloudflared tunnel --url http://localhost:5001
cloudflared tunnel --url http://localhost:5001 --no-autoupdate
cloudflared tunnel --url http://localhost:5001
cloudflared tunnel --url http://localhost:5001 > tunnel.log 2>&1 &
sleep 3 && grep trycloudflare tunnel.log
python index.py
killall python
python index.py
lsof -i :5001
kill -9 12345
kill -9 5001
nano index.py
python index.py
cloudflared tunnel --url http://localhost:5002 > tunnel.log 2>&1 &
sleep 3 && grep trycloudflare tunnel.log
cloudflared tunnel --url http://localhost:5002
cloudflared tunnel --url http://localhost:5002 2>&1 | grep -o 'https://.*trycloudflare.com'
nano index.py
`pkill -9 python`  `python index.py`
nano index.py
python index.py
rm index.py
nano index.py
python index.py
nano index.py
python index.py
rm index.py
nano index.py
python index.py
pkg install cloudflared -y
pkg install figlet toilet lolcat cowsay
pkg install figlet toilet cowsay
figlet "TU NOMBRE"
toilet -f big "HOLA" 
cowsay "Termux pro"
pip install lolcat
figlet "MEGA" | lolcat
toilet -f big "PRO" | lolcat
figlet -f slant "HOLA"
figlet -f big "HOLA"
toilet -f mono12 -F gay "DISEÑO"
toilet -f future "ASCII" -F metal
toilet -f mono12 -F gay "DISEÑO"
toilet -f future "ASCII" -F metal
nano ~/.bashrc
pip install lolcat
figlet "MI BANNER" | lolcat
toilet -f big "PRO" -F gay | lolcat
cowsay "Termux con estilo" | lolcat
echo 'figlet "WELCOME" | lolcat' >> ~/.bashrc
pip install flask
nano index.py
python index.py
nano index.py
python index.py
nano index.py
python index.py
rm index.py
nano index.py
python index.py
ls static
cp /mnt/data/wa_image_6062335473232410596 static/banner.jpg
ls static
cp /mnt/data/wa_image_3568207818642065054 static/banner.jpg
nano index.py
pkg update && pkg upgrade -y
pkg install proot-distro -y
proot-distro install debian
proot-distro login debian
pkg install php -y
echo '<?php 
if($_POST["user"]=="admin" && $_POST["pass"]=="123456"){
    echo "Login OK";
}else{
    echo "F=incorrect";
}
?>' > login.php
php -S 127.0.0.1:8080
nano style.css
git add .
git commit -m "diseño pro completo"
git push
git config --global credential.helper store
git pull origin main --allow-unrelated-histories
[200~git checkout --ours bot.js style.css
git add bot.js style.css~
git checkout --ours .
git add .
git commit -m "solucionado: mi version del portafolio"
git push origin main
cd mi-portafolio
idaaaaa
ls
cat > style.css << 'EOF'
/* MINIMALISTA ESTILO LINEAR + VERCEL */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;900&display=swap');

:root {
  --bg: #0A0A0A;
  --card: #111111;
  --text: #EDEDED;
  --text-2: #A1A1A1;
  --accent: #6366f1;
  --border: #1F1F1F;
}

* { margin: 0; padding: 0; box-sizing: border-box; }

body {
  font-family: 'Inter', sans-serif;
  background: var(--bg);
  color: var(--text);
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
}

.container {
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 24px;
}

/* HERO MINIMAL */
.hero {
  padding: 140px 0 100px;
  text-align: left;
  background: radial-gradient(800px 400px at 20% 20%, rgba(99,102,241,0.15), transparent);
}

.hero h1 {
  font-size: 4rem;
  font-weight: 900;
  letter-spacing: -3px;
  line-height: 1.1;
  margin-bottom: 24px;
}

.hero p {
  font-size: 1.25rem;
  color: var(--text-2);
  max-width: 600px;
  margin-bottom: 40px;
}

.btn {
  display: inline-block;
  padding: 14px 28px;
  background: var(--accent);
  color: white;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  transition: all 0.2s;
}

.btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 30px rgba(99,102,241,0.3);
}

/* SECCIONES */
.section {
  padding: 100px 0;
  border-top: 1px solid var(--border);
}

.section h2 {
  font-size: 2.5rem;
  font-weight: 700;
  letter-spacing: -1px;
  margin-bottom: 60px;
}

/* GRID DE PROYECTOS */
.grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 24px;
}

.card {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: 12px;
  padding: 32px;
  transition: all 0.3s;
}

.card:hover {
  border-color: var(--accent);
  transform: translateY(-4px);
}

.card h3 {
  font-size: 1.5rem;
  margin-bottom: 12px;
}

.card p {
  color: var(--text-2);
}

/* FOOTER */
footer {
  padding: 60px 0;
  text-align: center;
  color: var(--text-2);
  border-top: 1px solid var(--border);
}
EOF

ls
git add style.css
git commit -m "diseño minimalista v2"
git push origin main
git add style.css
git commit -m "diseño minimalista v2"
git push origin main
git log --oneline
cat index.html | grep style
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Aldahir Medina - Dev</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container">
    <section class="hero">
      <h1>Hola, soy <span style="color:var(--accent)">Aldahir Medina</span></h1>
      <p>Desarrollador Web Frontend de Moquegua PE</p>
      <a href="#proyectos" class="btn">Ver Proyectos</a>
    </section>

    <section class="section" id="proyectos">
      <h2>Mis Proyectos</h2>
      <div class="grid">
        <div class="card">
          <h3>Portafolio Web</h3>
          <p>Hecho con HTML, CSS y JS puro. 100% Responsive.</p>
        </div>
        <div class="card">
          <h3>E-commerce</h3>
          <p>Tienda online con carrito y pasarela de pago.</p>
        </div>
        <div class="card">
          <h3>Landing Page</h3>
          <p>Diseño minimalista para captar clientes.</p>
        </div>
      </div>
    </section>

    <section class="section">
      <h2>Contáctame</h2>
      <p>¿Tienes un proyecto? Escríbeme</p>
      <a href="mailto:medina.aldahir340@gmail.com" class="btn">medina.aldahir340@gmail.com</a>
    </section>

    <footer>
      <p>© 2026 Aldahir Medina</p>
    </footer>
  </div>
</body>
</html>
EOF

nano index.html
style.css
nano style.css
git add index.html style.css
git commit -m "v3: Portafolio minimalista Linear completo"
git push origin main
nano index.html
git add -A
git commit -m "v4: Reset total diseño minimalista negro"
git push origin main
