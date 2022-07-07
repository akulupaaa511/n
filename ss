#!/usr/bin/env bash
tdj=0
function gdd() {
screen -S bs -p 0 -X stuff "title @a[name=Ingin027] times 1 58 1^M"
screen -S bs -p 0 -X stuff "title @a[name=Ingin027] actionbar $tdj^M"
sleep 1m
tdj=$tdj+1
gdd
}
gdd
