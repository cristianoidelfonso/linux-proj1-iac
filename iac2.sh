#!/bin/bash

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando o servidor web apache..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Acessando o diretório /tmp"
cd /tmp

echo "Fazendo download de arquivos..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando os arquivos..."
unzip main.zip

echo "Renomeando diretório..."
mv linux-site-dio-main linux-site-dio

#echo "Acessando o diretório descompactado..."
#cd linux-site-dio

echo "Copiando os arquivos para o diretorio padrão do apache..."
rm -Rf /var/www/html/
mkdir /var/www/html/
cp -R linux-site-dio/* /var/www/html/

echo "Removendo arquivos baixados..."
rm -Rf main.zip linux-site-dio-main linux-site-dio

echo "Finalizado com sucesso!..."