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

# Display ASCII Art Base64

base64 -d <<<"H4sIAAAAAAAAA43QwQ0AIQgEwD/FGKqxli3/FMmJouC+wIwJUEoPg7lkob9iZJ5s03j78GYLQmwt
t4DvmBapk1ww7VLwSTLISek3JkuL3aU+jYzjqPWSl2CxkTQU6309jWxAM4vIXhe7W5ziZzgyZyNn
beamfYBq32SztadXNQ3lZNoPpitpmfQDAAA=
" | gunzip

echo -e "Shuffz Mining Script \n" 

# Bash Menu

PS3='Please enter your choice: '
options=("Mine ETH" "Mine ERG" "Mine Firo" "Mine Flux" "NiceHash" "Donate-a-Core" "Mine VRSC CPU Mining" "Verus Docker" "Mine XMR" "Mine RVN" "Mine ZEC" "Mine ETC" "Mine CFX" "Mine BEAM" "Mine CORTEX" "Mine AE" "Mixed Algo" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Mine ETH")
            # Check for PhionixMiner if exists extract tar.gz
            for a in PhoenixMiner_5.6d_Linux.tar.gz
            do
                a_dir=${a%.tar.gz}
                mkdir --parents $a_dir
                tar -xvzf $a -C $a_dir
                cd PhoenixMiner_5.6d_Linux
                cd PhoenixMiner_5.6d_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ETH Wallet Address: "
                echo "$REPLY"
                sed -i "s/0x008c26f3a2Ca8bdC11e5891e0278c9436B6F5d1E/$REPLY/g" start_miner.sh
                clear
                read -p "Enter Pool Address Eg.eu1.ethermine.org:5555: "
                echo "$REPLY"
                sed -i "s/eu1.ethermine.org:5555/$REPLY/g" start_miner.sh
                clear
                read -p "Enter Worker ID: "
                echo "$REPLY"
                sed -i "s/Rig001/$REPLY/g" start_miner.sh
                sudo ./start_miner.sh
            done
            ;;
        "Mine ERG")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Worker ID: "
                echo "$REPLY"
                sed -i "s/default/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Mine Firo")
                mkdir t-rex-0.24.8-linux
                tar -xzvf t-rex-0.24.8-linux.tar.gz -C t-rex-0.24.8-linux
                clear
                cd t-rex-0.24.8-linux
                sudo chmod +x ./FIRO-2miners.sh
                clear
                read -p "Enter your FIRO Wallet Address: "
                echo "$REPLY"
                sed -i "s/aBR3GY8eBKvEwjrVgNgSWZsteJPpFDqm6U/$REPLY/g" FIRO-2miners.sh
                clear
                read -p "Enter FIRO Pool Address Eg. firo.2miners.com:8181: "
                echo "$REPLY"
                sed -i "s/firo.2miners.com:8181/$REPLY/g" FIRO-2miners.sh
                clear
                read -p "Enter Worker ID: "
                echo "$REPLY"
                sed -i "s/rig0/$REPLY/g" FIRO-2miners.sh
                sudo ./FIRO-2miners.sh
            done
            ;;
        "Mine VRSC CPU Mining")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Worker ID: "
                echo "$REPLY"
                sed -i "s/default/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Mine RVN")
            read -p "Enter your RVN Wallet Address: "
            echo "$REPLY" > rvnwallet.txt
            ;;
        "Mine Flux")
            for a in lolMiner_v1.38_Lin64.tar.gz
            do
                a_dir=${a%.tar.gz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd lolMiner_v1.38_Lin64
                cd 1.38
                sudo chmod +x mine_flux.sh
                clear
                read -p "Enter your FLUX Wallet Address: "
                echo "$REPLY"
                sed -i "s/t1cLkQpx3kEJw2TjPnTmCpe4KqLvER8NknA/$REPLY/g" mine_flux.sh
                clear
                read -p "Enter Flux Mining Pool Address Eg. fi.flux.herominers.com:1200:"
                echo "$REPLY"
                sed -i "s/de.flux.herominers.com:1200/$REPLY/g" mine_flux.sh
                clear
                read -p "Enter Worker ID: "
                echo "$REPLY"
                sed -i "s/testWorker/$REPLY/g" mine_flux.sh
                sudo ./mine_flux.sh
            done
            ;;
        "Mine XMR")
            for a in xmrig-6.16.2-linux-x64.tar.gz
            do
                a_dir=${a%.tar.gz}
                mkdir --parents $a_dir
                tar -xvzf $a -C $a_dir
                cd xmrig-6.16.2-linux-x64
                cd xmrig-6.16.2-linux-x64
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your XMR Wallet Address: "
                echo "$REPLY"
                sed -i "s/0x008c26f3a2Ca8bdC11e5891e0278c9436B6F5d1E/$REPLY/g" start_miner.sh
                clear
                read -p "Enter Pool Address Eg.eu1.ethermine.org:5555:"
                echo "$REPLY"
                sed -i "s/eu1.ethermine.org:5555/$REPLY/g" start_miner.sh
                sudo ./start_miner.sh
            done
            ;;
        "Mine VRSC Add Cronjob")
            git clone https://github.com/vrscms/hellminer.git && chmod -R 777 hellminer && cd hellminer && ./install.sh
            ;;
        "Mixed Algo")
            echo "This option will switch between all the listed alogorythms"
            ;;
        "Verus Docker")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Mine ZEC")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Mine ETC")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Mine CFT")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Mine CORTEX")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Mine BEAM")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Mine AE")
            for a in NBMiner_40.1_Linux.tgz
            do
                a_dir=${a%.tgz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd NBMiner_40.1_Linux
                cd NBMiner_Linux
                sudo chmod +x start_miner.sh
                clear
                read -p "Enter your ERG Wallet Address: "
                echo "$REPLY"
                sed -i "s/9ecVhFXG3dnPX1coLxJEZqe62W7weHanavi9axnaNmtBNFZkAiQ/$REPLY/g" start_ergo.sh
                clear
                read -p "Enter Pool Address Eg. fi.ergo.herominers.com:10250:"
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
