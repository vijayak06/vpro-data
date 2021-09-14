#!/bin/bash

USR=devops

for host in `cat myhosts`
do
   echo "Connecting to $host"
   scp websetup.sh $USR@$host:/tmp/websetup.sh
   ssh $USR@$host /tmp/websetup.sh
   ssh $USR@$host rm -rf /tmp/websetup.sh
   echo "Execution successful on $host"
   echo
done

