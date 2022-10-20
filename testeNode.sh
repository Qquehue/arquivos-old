#!/bin/bash
sudo apt update && sudo apt upgrade -y

VERSION="$(node -v 2>&1 | grep version | cut -d'"' -f2)"

if [ "${VERSION}" ];
then
echo "Cliente possui Node instalado: ${VERSION}" 
else
echo "Cliente nao possui Node instalado"
fi

if [ $? -eq 0 ];
then
    echo "node instalado"
then
    echo "node instalado"
else
    echo "node nao instalado"
    echo "gostaria de instalar o node? (s/n)"
    read inst
    if [ \"$inst\" == \"s\" ];
    then
        sudo apt install nodejs -y
    fi
fi

mkdir Web.app

cd Web.app

git clone https://github.com/Qquehue/Console-Tech-Consulting.git

cd Console-Tech-Consulting

npm i

npm start
