#!/bin/bash

echo stable
sudo apt-get install git -y
git clone https://github.com/taishingi/continuous-template continuous
cd continuous/go
go run main.go
