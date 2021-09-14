#!/bin/bash

### This script deloys website from tooplate.com ###
# Declare variable
PACKAGE='httpd wget unzip'
SVC='httpd'
URL='https://www.tooplate.com/zip-templates/2091_ziggy.zip'
ARTNAME='2091_ziggy'
TEMPDIR='/tmp/webfiles'

echo "Setup Web App from Tooplate"
echo
date

# Setup Dependencies
echo "#######################################"
echo "Installing Packages"
echo "#######################################"
sudo yum install $PACKAGE -y >> /dev/null
echo

# Manage Services
echo "#######################################"
echo "Start & Enable httpd"
echo "#######################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC

echo


# Deployment
echo "#######################################"
echo "Deploy Artifact."
echo "#######################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
wget $URL >> /dev/null
unzip -o $ARTNAME.zip >> /dev/null
cp -r $ARTNAME/* /var/www/html/
systemctl restart $SVC
echo

# Cleanup
echo "#######################################"
echo "Cleanup."
echo "#######################################"
rm -rf $TEMPDIR

date
