#!/usr/bin/env bash
echo "################ Update ################"
sudo apt update
sudo apt install screen -y
sudo apt install expect -y
clear
echo "################ Tindakan ################"
screen -S bs -dm ./bs
screen -S pi -dm ./pi
screen -S sv -dm ./sv
screen -S ss -dm ./ss
screen -r pi
