#!/bin/bash

if [ -f /var/run/httpd/httpd.pid ]
then
   echo
   echo "#####################################"
   date
   echo "Httpd process is running."
else
   echo
   echo "#####################################"
   date
   echo "Httpd Process is NOT running, trying to start."
   systemctl start httpd
   if [ $? -eq 0 ]
   then
     echo "Httpd Started successfully."
   else
     echo "Process FAILED to start, check with admin."
   fi
fi
