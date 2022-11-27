#!/bin/bash

#///////////////////////CLONANDO APLICACAO///////////////////////////
cd /home/ubuntu/Desktop
mkdir Local.App
cd Local.App
git clone https://github.com/Qquehue/Console-Tech-Consulting.git
cd Console-Tech-Consulting/API/local-app/target

#///////////////////////////INICIANDO JAR////////////////////////////
chmod 777 local-app-1.0-SNAPSHOT-jar-with-dependencies.jar

#//////////////////////////DOCKER JAVA///////////////////////////////
sudo docker build -t dockerfile .
sudo docker run -d -t --name ctc-cli dockerfile