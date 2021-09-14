#!/bin/bash

echo "Enter the magic Number."
read NUM

echo "You have entered $NUM"

read -p 'Enter your username: ' USR
read -sp 'Enter your password: ' PASS

echo "Welcome user $USR on the system $HOSTNAME."
