#!/usr/bin/env bash
tdj=0
function gdd() {
screen -S bs -p 0 -X "`printf "title @a[name=Ingin027] times 1 58 1\r"`";
screen -S bs -p 0 -X "`printf "title @a[name=Ingin027] actionbar `$tdj`\r"`";
sleep 5m
tdj=tdj+1
}
gdd
