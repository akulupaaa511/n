#!/usr/bin/env bash
read -p "Clear (home)? y/n" yn
case $yn in
[Yy]* ) ajj=1;;
[Nn]* ) ajj=0;;
* ) ./sh;;
esac
function v() {
if [ $ajj = 1];then
yes | rm /home/$USER/* -r
fi
yes | gcloud config set project concise-ivy-338302
echo "##S##"
sudo apt update
clear
echo "##S##"
sudo apt install expect -y
clear
echo "##S##"
sudo apt install git-lfs -y
clear
echo "##S##"
git lfs install
clear
echo "##M##"
/usr/bin/expect <<EOD
spawn git clone https://github.com/akulupaaa511/n.git
expect "Username for 'https://github.com':"
send "akulupaaa511\r"
expect "Password for 'https://akulupaaa511@github.com':"
send "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\r"
expect "Username for 'https://github.com':"
send "akulupaaa511\r"
expect "Password for 'https://akulupaaa511@github.com':"
send "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\r"
expect eof
EOD
clear
echo "##E##"
echo "Runing..."
sleep 1
cd n
clear
./mm
