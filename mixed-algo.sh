#!/bin/bash

#Check if user is root 

while [ "$(whoami)" != "root" ]; do
    echo "You must be root!"
    exit 1
done

#Terminal Colors

grn=$'\x1b[32m'
red=$'\x1b[31m'
pur=$'\x1b[35m'
ylw=$'\x1b[33m'
rst=$'\x1b[0m'
