#!/usr/bin/env bash

ssh pi@192.168.29.234 \
	'pkill pwomxplayer; exit' \

ssh pi@192.168.29.245 \
	'pkill pwomxplayer; exit' \

ssh pi@192.168.29.241 \
	'pkill pwomxplayer; exit' \

ssh pi@192.168.29.148 \
	'pkill pwomxplayer; exit' \

ssh pi@192.168.29.249 \
	'pkill pwomxplayer; exit' \

ssh pi@192.168.29.213 \
	'pkill pwomxplayer; exit'
