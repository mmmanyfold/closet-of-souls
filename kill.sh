#!/usr/bin/env bash

# ./kill.sh <process name>
# ./kill.sh omxplayer # stops local video
# ./kill.sh pwomxplayer # stops stream listener

process=$1

ssh pi@192.168.29.234 \
	"pkill $process; exit"

ssh pi@192.168.29.245 \
	"pkill $process; exit"

ssh pi@192.168.29.241 \
	"pkill $process; exit"

ssh pi@192.168.29.148 \
	"pkill $process; exit"

ssh pi@192.168.29.249 \
	"pkill $process; exit"

ssh pi@192.168.29.213 \
	"pkill $process; exit"
