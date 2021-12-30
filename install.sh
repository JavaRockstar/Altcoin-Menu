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

base64 -d <<<"H4sIAAAAAAAAA43QwQ0AIQgEwD/FGKqxli3/FMmJouC+wIwJUEoPg7lkob9iZJ5s03j78GYLQmwt
t4DvmBapk1ww7VLwSTLISek3JkuL3aU+jYzjqPWSl2CxkTQU6309jWxAM4vIXhe7W5ziZzgyZyNn
beamfYBq32SztadXNQ3lZNoPpitpmfQDAAA=
" | gunzip

echo -e "Shuffz Mining Script \n" 

PS3='Please enter your choice: '
options=("Mine ETH" "Mine ERG" "Mine Firo" "Mine Flux" "NiceHash" "Donate Core" "Mine VRSC CPU Mining" "Mine XMR" "Mine RVN" "Mixed Algo" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Mine ETH")
            read -p "Enter your ETH Wallet Address: "
            echo "$REPLY" > ethwallet.txt
            read -p "Enter Pool Address: "
            echo "$REPLY" > ethpool.txt
            ;;
        "Mine ERG")
            echo "you chose choice 2"
            ;;
        "Mine Firo")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Mine VRSC CPU Mining")
            read -p "Enter your VRSC Wallet Address: "
            echo "$REPLY" > vrscwallet.txt
            ;;
        "Mine RVN")
            read -p "Enter your RVN Wallet Address: "
            echo "$REPLY" > rvnwallet.txt
            ;;
        "Mine Flux")
            read -p "Enter your FLUX Wallet Address: "
            echo "$REPLY" > fluxwallet.txt
            ;;
        "Mine XMR")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Mine VRSC Add Cronjob")
            git clone https://github.com/vrscms/hellminer.git && chmod -R 777 hellminer && cd hellminer && ./install.sh
            ;;
        "Mixed Algo")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
