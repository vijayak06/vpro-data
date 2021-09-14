#!/bin/bash


USR=devops

for host in `cat myhosts`
do
   echo "Connecting to $host"
   ssh $USR@$host hostname
   echo "Login successful to $host"
done
