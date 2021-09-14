#!/bin/bash

### This script deloys website from tooplate.com ###
echo "Setup Web App from Tooplate"
echo
date

# Setup Dependencies
echo "#######################################"
echo "Installing Packages"
echo "#######################################"
sudo yum install httpd wget unzip -y >> /dev/null
echo

# Manage Services
echo "#######################################"
echo "Start & Enable httpd"
echo "#######################################"
sudo systemctl start httpd
echo


# Deployment
echo "#######################################"
echo "Deploy Artifact."
echo "#######################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2108_dashboard.zip >> /dev/null
unzip -o 2108_dashboard.zip >> /dev/null
cp -r 2108_dashboard/* /var/www/html/
systemctl restart httpd
echo

# Cleanup
echo "#######################################"
echo "Cleanup."
echo "#######################################"
rm -rf /tmp/webfiles

date
