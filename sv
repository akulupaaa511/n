#!/usr/bin/env bash
function ag() {
sleep 5m
screen -S bs -p 0 -X stuff "tellraw Ingin027 {"text":"[!] Starting Backup..","bold":true,"underlined":true,"color":"red"}^M"
git add --all -- ':!bs' ':!bedrock_server_symbols.debug'
git commit -m "n"
/usr/bin/expect <<EOD
spawn git push
expect "Username for 'https://github.com':"
send "akulupaaa511\r"
expect "Password for 'https://akulupaaa511@github.com':"
send "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\r"
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
screen -S bs -p 0 -X stuff "tellraw Ingin027 {"text":"[!] Backup Finished","bold":true,"underlined":true,"color":"red"}^M"
ag
}
ag
