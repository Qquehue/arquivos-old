#!/bin/bash
VERSION="$(java -version 2>&1 | grep version | cut -d'"' -f2)"
if [ “${VERSION}" ];
then
echo “Cliente possui java instalado: ${VERSION}"
else
echo “Cliente não possui java instalado"
fi

java -version
if [ $? -eq 0 ];
then
echo “java instalado"
else
echo “java nao instalado"
echo “gostaria de instalar o java? (s/n)"
read inst
if [ \"$inst\" == \"s\" ];
then
sudo apt install default-jre -y
fi
fi

cd /home/ubuntu/Desktop

git clone https://github.com/Qquehue/Console-Tech-Consulting.git

cd Console-Tech-Consulting

cd API/local-app

cd target

java -jar local-app-1.0-SNAPSHOT-jar-with-dependencies.jar
