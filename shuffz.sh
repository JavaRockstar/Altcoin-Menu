#!/bin/bash

ethwallet = ethwallet.txt
ethpool = ethpool.txt

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
            for a in PhoenixMiner_5.6d_Linux.tar.gz
            do
                a_dir=${a%.tar.gz}
                mkdir --parents $a_dir
                tar -xvzf $a -C $a_dir
                cp ethpool.txt > PhoenixMiner_5.6d_Linux/PhoenixMiner_5.6d_Linux/
                cp wallet.txt > PhoenixMiner_5.6d_Linux/PhoenixMiner_5.6d_Linux/
                cd PhoenixMiner_5.6d_Linux
                cd PhoenixMiner_5.6d_Linux
                sudo chmod +x start_miner.sh
                sed -i 's/eu1.ethermine.org:5555/$ethpool/g' start_miner.sh
                sed -i 's/0x008c26f3a2Ca8bdC11e5891e0278c9436B6F5d1E/$ethwallet/g' start_miner.sh
                sudo ./start_miner.sh
            done
            ;;
        "Mine ERG")
            echo "you chose choice 2"
            ;;
        "Mine Firo")
            read -p "Enter your Firo Wallet Address: "
            echo "$REPLY" > firowallet.txt
            read -p "Enter Pool Address: "
            echo "$REPLY" > firopool.txt
            ;;
        "Mine VRSC CPU Mining")
            read -p "Enter your VRSC Wallet Address: "
            echo "$REPLY" > vrscwallet.txt
            read -p "Enter VRSC Pool Address: "
            echo "$REPLY" > vrscpool.txt
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
            echo "This option will switch between all the listed alogorythms"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
