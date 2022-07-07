#!/usr/bin/env bash
echo "################ Update ################"
sudo apt update
sudo apt install screen -y
sudo apt install expect -y
git config --global user.name "akulupaaa511"
git config --global user.email "akulupamaap5@gmail.com"
clear
echo "################ Tindakan ################"
screen -S bs -dm ./bs
screen -S pi -dm ./pi
screen -S sv -dm ./sv
screen -S ss -dm ./ss
sleep 1
screen -r pi
