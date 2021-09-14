#!/bin/bash

yum --help &> /dev/null

if [ $? -eq 0 ]
then
   echo "RedHat OS."
   sudo yum install git -y
else
   echo "Debian OS"
   sudo apt update
   sudo apt install git -y
fi
