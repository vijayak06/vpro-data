#!/bin/bash


read -p 'Enter your golden number: ' NUM
echo

if [ $NUM -gt 100 ]
then
   echo "Your golden number is greater than my number."
else
  echo "Number less than 100"
fi
echo
date
echo "Done."
