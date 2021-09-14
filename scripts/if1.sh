#!/bin/bash


read -p 'Enter your golden number: ' NUM

if [ $NUM -gt 100 ]
then
   echo "Your golden number is greater than my number."
fi

date
echo "Done."
