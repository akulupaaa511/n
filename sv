#!/usr/bin/env bash
sleep 5m
screen -S bs -p 0 -X stuff "tellraw Ingin027 {"rawtext":[{"text":"Starting Backup.."}]}^M"
git add .
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
screen -S bs -p 0 -X stuff "tellraw Ingin027 {"rawtext":[{"text":"Backup Finished"}]}^M"
./sv
