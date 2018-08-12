#!/usr/bin/env bash

# ./kill-piwall.sh <process name>
# ./kill-piwall.sh omxplayer # stop local video
# ./kill-piwall.sh pwomxplayer # stop stream listener
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
