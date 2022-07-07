#!/usr/bin/env bash
tdj = 0
function gdd() {
sleep 1m
tdj = tdj+1
screen -S bs -p 0 -X "`printf "title @a[name=Ingin027] actionbar `$tdj` \r"`";
}
gdd
