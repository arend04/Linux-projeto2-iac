#!/bin/bash

echo "Atualizando ..."
apt-get update
apt-get upgrade -y

echo "Instalando arquivos..."
apt-get install apache2 -y
apt-get install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando..."
unzip main.zip

cd linux-site-dio-main

cp  -R * /var/www/html

echo "Script finalizado"
