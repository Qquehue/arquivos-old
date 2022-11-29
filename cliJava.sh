#!/bin/bash

cd /home/ubuntu/arquivos-sh/java
sudo docker build -t dockerfile .
sudo docker run -d -t --name ctc-cli dockerfile