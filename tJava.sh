#!/bin/bash

#///////////////////////CLONANDO APLICACAO///////////////////////////
cd /home/ubuntu/Desktop
mkdir Local.App
git clone https://github.com/Qquehue/Console-Tech-Consulting.git
cd Console-Tech-Consulting/API/local-app/target
#///////////////////////////INICIANDO JAR////////////////////////////
chmod 777 local-app-1.0-SNAPSHOT-jar-with-dependencies.jar
java -jar local-app-1.0-SNAPSHOT-jar-with-dependencies.jar
#///////////////////////////MISCELLANIUS/////////////////////////////
xauth add $(xauth -f /home/ubuntu/.Xauthority list|tail -l)
export DISPLAY=:0.0
env |grep DISPLAY
DISPLAY=:0.0

classedodriver(com.mysql.cj.jdbc.Driver)
Url: jdbc:mysql://localhost:3306/nomebanco?autoReconnect=true&useSSL=false
username("root")
password("urubu100")