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
