#!/bin/bash

for USR in coorg ooty maldives ireland atarctica switzerland MTeverest
do
  echo 
  echo "Check if user $USR exist."
  id $USR &> /dev/null
  if [ $? -eq 0 ]
  then
    sleep 1
    echo "user $USR already exist, skipping add."
  else
    echo "I am adding user $USR."
    useradd $USR
    id $USR
    sleep 1
  fi
  echo
done

