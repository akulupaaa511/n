#!/usr/bin/env bash
yes | gcloud config set project concise-ivy-338302
echo "##S##"
sudo apt update
sudo apt install expect -y
sudo apt install git-lfs -y
git lfs install
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
echo "##E##"
sleep 1
cd n
./mm
