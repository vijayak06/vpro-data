#!/bin/bash

sudo rm -rf /tmp/webfiles
sudo systemctl stop httpd
sudo yum remove httpd -y
sudo rm -rf /var/www/html/*
