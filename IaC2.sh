#!/bin/bash

echo " bem vindo"


echo " inicando atualização do sistema............"

apt-get update -y


apt-get upgrade -y

echo "atualizacao concluida"
echo " incicando instalacao do uzip..............."

apt-get install unzip -y


echo " finalizado instalacao do unzip"


echo " instalando o servico web..................."

apt-get install apache2 -y

echo " finalizado instalacao do apache2"

echo " instalando o wget ........."

apt-get install wget -y

echo " finalizado "



echo " -------------------------------------------------------------------------------------------------------"



 echo " fazendo donwload do arquivo........"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

cd /scripts2/

unzip /tmp/main.zip

rm /var/www/html/index.html

cp -r /scripts2/linux-site-dio-main/* /var/www/html/

systemctl restart apache

                                
