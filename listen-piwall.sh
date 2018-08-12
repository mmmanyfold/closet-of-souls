#!/usr/bin/env bash

ssh pi@192.168.29.234 \
	'nohup pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B &> dev/null & exit' \

ssh pi@192.168.29.245 \
	'nohup pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B &> dev/null & exit' \

ssh pi@192.168.29.241 \
	'nohup pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B &> dev/null & exit' \

ssh pi@192.168.29.148 \
	'nohup pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B &> dev/null & exit' \

ssh pi@192.168.29.249 \
	'nohup pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B &> dev/null & exit' \

ssh pi@192.168.29.213 \
	'nohup pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B &> dev/null & exit' \
