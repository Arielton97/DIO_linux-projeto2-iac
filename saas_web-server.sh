echo "Atualizando o sistema"
echo "Baixando atualizações..."
apt-get upgrade -y
echo "Atualizando..."
apt-get update -y
echo "Sistema atualizado!!"

echo "Instalando o servidor web apache2"
apt-get install apache2 -y
echo "Instalando o decompactador Unzip"
apt-get install unzip -y

echo "Baixando a aplicação do gitHub de Denilson Bonatti"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Movendo a aplicação para a pasta temporária /tmp"
mv main.zip /tmp ok

echo "Descompactando a aplicação zipada na pasta temporária"
unzip /tmp/main.zip ok

echo "Copiando a aplicação para a pasta /var/www/html..."
cp -r /tmp/linux-site-dio-main/ /var/www/html/
