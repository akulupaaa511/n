#!/usr/bin/env bash
clear
echo "### Memuat ###"
git config --global user.name "akulupaaa511"
git config --global user.email "akulupamaap5@gmail.com"
function uka() {
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.19.2.02.zip -O a.zip
unzip a.zip
}
function aku() {
screen -S bs -dm ./n/bs
screen -S pi -dm ./n/pi
screen -S st -dm ./n/st
screen -S sb -dm ./n/sb
clear
screen -r pi
exit 0
}
clear
echo "### Koneksi ke Project ###"
pkill screen
yes | gcloud config set project concise-ivy-338302
pkill screen
reset
clear
echo "### Apt Update ###"
sudo apt update
clear
echo "### Installing ###"
sudo apt install screen -y
sudo apt install expect -y
sudo apt install git-lfs -y
git lfs install
clear
echo "### Checking ###"
if [ ! -d n ];then
clear
echo "### Downloading ###"
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
else
echo "n directory found"
fi
clear
bs=1
bss=1
pi=1
st=1
sb=1
if [ ! -f ~/n/bs ];then
bs=0
echo "bs not found (fixing)"
else
echo "bs found"
fi
if [ ! -f ~/n/bedrock_server_symbols.debug ];then
bss=0
echo "bedrock_server_symbols.debug not found (fixing)"
else
echo "bedrock_server_symbols.debug found"
fi
bbss=$(($bs + $bss))
if [ $bbss != 2];then
uka > /dev/null
clear
fi
if [ $bs = 0 ];then
cp bedrock_server ~/n/bs
fi
if [ $bss = 0 ];then
cp bedrock_server_symbols.debug ~/n
fi
if [ ! -f ~/n/pi ];then
pi=0
echo "pi not found (fixing)"
wget https://playit.gg/downloads/playit-0.8.3-beta -O pi > /dev/null
chmod +x pi
cp pi ~/n
else
echo "pi found"
fi
if [ ! -f ~/n/st ];then
st=0
echo "st not found (fixing)"
wget --header "Authorization: token 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" https://rawgithubusercontent.com/akulupaaa511/n/main/st > /dev/null
chmod +x st
cp st ~/n
else
echo "st found"
fi
if [ ! -f ~/n/sb ];then
st=0
echo "sb not found (fixing)"
wget --header "Authorization: token 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" https://rawgithubusercontent.com/akulupaaa511/n/main/sb > /dev/null
chmod +x sb
cp sb ~/n
else
echo "sb found"
fi
echo "### Menjalankan ###"
if [ -d n ];then
aku
fi
echo "n not found"
echo "### Restart ###"
sleep 3
./ss
