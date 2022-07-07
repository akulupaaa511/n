#!/usr/bin/env bash
echo "##S##"
tdj=0
tdk=0
tdl=0
screen -S bs -p 0 -X stuff "whitelist add Ingin027"
function gdd() {
echo "##R##"
screen -S bs -p 0 -X stuff "title @a[name=Ingin027] times 1 28 1^M"
screen -S bs -p 0 -X stuff "op Ingin027^M"
screen -S bs -p 0 -X stuff "title @a[name=Ingin027] actionbar §e|§f $tdl H §e|§f $tdk M §e|§f $tdj S §e|§f^M"
sleep 1
let "tdj+=1"
if [ $tdj -gt 59 ];then
tdj=0
let "tdk+=1"
fi
if [ $tdk -gt 59 ];then
tdk=0
let "tdl+=1"
fi
gdd
}
gdd
