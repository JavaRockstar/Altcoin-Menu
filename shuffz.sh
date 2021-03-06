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

echo -e "Shuffz Mining Script\n" 
echo -e "POW in Style - Mine 50 different POW Coins/Tokens\n"

# Bash Menu
# Ask user to enter choice
PS3='Please enter your choice: '
# Menu options
options=("Mine ETH" "Mine ERG" "Mine Firo" "Mine Flux" "NiceHash" "Donate-a-Core" "Mine VRSC CPU Mining" "Mine XMR" "Mine RVN" "Mine ZEC" "Mine ETC" "Mine CFX" "Mine BEAM" "Mine CORTEX" "Mine AE" "Mine Equilibria" "Mixed Algo" "Mine Raptoreum CPU" "Mine Grin GPU/CPU" "Mine Scala CPU" "Mine TENT GPU" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        # Working
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

        # Working
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
        # Working
        "Mine Firo")
                sudo wget -c https://github.com/trexminer/T-Rex/releases/download/0.24.8/t-rex-0.24.8-linux.tar.gz && tar -xzf t-rex-0.24.8-linux.tar.gz
                clear
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
                ;;
        # To-do
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
            # Working
            for a in SRBMiner-Multi-0-8-8.tar.gz
            do
                a_dir=${a%.tar.gz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd SRBMiner-Multi-0-8-8
                cd SRBMiner-Multi-0-8-8
                sudo chmod +x start-mining-raven.sh
                clear
                read -p "Enter your RVN Wallet Address: "
                echo "$REPLY"
                sed -i "s/RMkbRvStnFQNg5v9Pnxuik8o6pssjmJVYn/$REPLY/g" start-mining-raven.sh
                clear
                read -p "Enter Pool Address Eg. de.ravencoin.herominers.com:1140: "
                echo "$REPLY"
                sed -i "s/de.ravencoin.herominers.com:1140!rvn-eu1.nanopool.org:12222/$REPLY/g" start-mining-raven.sh
                sudo ./start-mining-raven.sh
            done  
            ;;
        "Mine Flux")
            # Working
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
        # Working
        "Mine XMR")
                tar -xvzf xmrig-6.16.2.tar.gz
                cd xmrig-6.16.2
                sudo chmod +x xmrig
                sudo chmod +x config.json
                clear
                read -p "Enter your XMR Wallet Address: "
                echo "$REPLY"
                sed -i "s/YOUR_WALLET_ADDRESS/$REPLY/g" config.json
                clear
                read -p "Enter Pool Address Eg.pool.supportxmr.com:3333: "
                echo "$REPLY"
                sed -i "s/donate.v2.xmrig.com:3333/$REPLY/g" config.json
                clear
                read -p "Enter Worker ID: "
                echo "$REPLY"
                sed -i "s/worker1/$REPLY/g" config.json
                sudo ./xmrig
            ;;
        "Mine VRSC Add Cronjob")
            git clone https://github.com/vrscms/hellminer.git && chmod -R 777 hellminer && cd hellminer && ./install.sh
            ;;
        "Mixed Algo")
            echo "This option will switch between all the listed alogorythms"
            ;;
        #To-do
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
                echo "$REPLY"
                sed -i "s/hk.ergo.herominers.com:10250/$REPLY/g" start_ergo.sh
                sudo ./start_ergo.sh
            done
            ;;
        #To-do
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
        # To-do
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
        # To-do
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
        # Working
        "Mine Scala CPU")
            for a in SRBMiner-Multi-0-8-8.tar.gz
            do
                a_dir=${a%.tar.gz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd SRBMiner-Multi-0-8-8
                cd SRBMiner-Multi-0-8-8
                sudo chmod +x start-mining-scala.sh
                clear
                read -p "Enter your Scala Wallet Address: "
                echo "$REPLY"
                sed -i "s/SvjrUeKEARRBQzrbjzhLp1GGnK327TzynA3Ayx7z9uwh6fSZjEiA42sPekwjpqMdu6EurbBmZ7hJoFN1BWsjMqQa1LN11uHVa/$REPLY/g" start-mining-scala.sh
                clear
                read -p "Enter Pool Address Eg. de.scala.herominers.com:1190: "
                echo "$REPLY"
                sed -i "s/de.scala.herominers.com:1190/$REPLY/g" start-mining-scala.sh
                clear
                read -p "Enter Worker ID: "
                echo "$REPLY"
                sed -i "s/shuffz/$REPLY/g" ./start-mining-scala.sh
                sudo ./start-mining-scala.sh
            done            
                ;;
        # To-do
        "Mine Equilibria")
            for a in SRBMiner-Multi-0-8-8.tar.gz
            do
                a_dir=${a%.tar.gz}
                mkdir --parents $a_dir
                tar -xzvf $a -C $a_dir
                cd SRBMiner-Multi-0-8-8
                cd SRBMiner-Multi-0-8-8
                sudo chmod +x start-mining-raven.sh
                clear
                read -p "Enter your RVN Wallet Address: "
                echo "$REPLY"
                sed -i "s/RMkbRvStnFQNg5v9Pnxuik8o6pssjmJVYn/$REPLY/g" start-mining-raven.sh
                clear
                read -p "Enter Pool Address Eg. de.ravencoin.herominers.com:1140: "
                echo "$REPLY"
                sed -i "s/de.ravencoin.herominers.com:1140!rvn-eu1.nanopool.org:12222/$REPLY/g" start-mining-raven.sh
                sudo ./start-mining-raven.sh
            done  
            ;;
        # Working add one time or add to crontab option.
        "Donate-a-Core")
                echo "By donating one or more CPU cores to our project we can use these cores to mine a small amount of Coins/Tokens that can be used to further develop of user mining scripts."
                while true; do
                    read -p "Do you wish to Donate-a-Core to Shuffz?" yn
                    case $yn in
                        [Yy]* ) git clone https://github.com/JavaRockstar/hellminer.git && chmod -R 777 /shuffz-altcoin-miner/hellminer/ && cd /shuffz-altcoin-miner/hellminer && ./install.sh;;
                        [Nn]* ) exit;;
                        * ) echo "Please answer yes or no.";;
                esac
            done
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
