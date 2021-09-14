#!/bin/bash


read -p 'Enter your golden number: ' NUM
echo

if [ $NUM -gt 100 ]
then
   echo "Your golden number is greater than my number."
elif  [ $NUM -eq 100 ]
then
   echo "Your number is equal to my number."
else
  echo "Number less than my number."
fi
echo
date
echo "Done."
