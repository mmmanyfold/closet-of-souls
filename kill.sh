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

ssh pi@192.168.29.217 \
	"pkill $process; exit"

ssh pi@192.168.29.202 \
	"pkill $process; exit"

ssh pi@192.168.29.122 \
	"pkill $process; exit"

ssh pi@192.168.29.185 \
	"pkill $process; exit"

ssh pi@192.168.29.127 \
	"pkill $process; exit"

ssh pi@192.168.29.243 \
	"pkill $process; exit"
