#!/bin/bash
cd /home/arquivos-sh/java

sudo docker build -t dockerfile .
sudo docker run -d -t --name ctc-cli dockerfile