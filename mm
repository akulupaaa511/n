#!/usr/bin/env bash
pkill screen
echo "################ Install ################"
sudo apt install screen -y
sudo apt install expect -y
sudo apt install openvpn -y
cd /tmp && wget https://files.ovpn.com/ubuntu_cli/ovpn-sg-singapore.zip && unzip ovpn-sg-singapore.zip && mkdir -p /etc/openvpn && mv config/* /etc/openvpn && chmod +x /etc/openvpn/update-resolv-conf && rm -rf config && rm -f ovpn-sg-singapore.zip
echo "mmyss" >> /etc/openvpn/credentials
echo "mmyss" >> /etc/openvpn/credentials
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
