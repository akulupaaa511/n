#!/usr/bin/env bash
tdj=0
tdk=0
tdl=0
function gdd() {
screen -S bs -p 0 -X stuff "title @a[name=Ingin027] times 1 28 1^M"
screen -S bs -p 0 -X stuff "title @a[name=Ingin027] actionbar $tdl $tdk $tdj^M"
sleep 1
tdj=$tdj+1
if [ $tdj -gt 59 ];then
tdj=0
tdk=$tdk+1
fi
if [ $tdk -gt 59 ];then
tdk=0
tdl=$tdl+1
fi
gdd
}
gdd
