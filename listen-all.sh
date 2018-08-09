#!/usr/bin/env bash

ssh pi@192.168.29.234 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.245 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.241 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.148 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.249 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.213 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.217 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.202 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.122 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.243 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.185 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B' & \

ssh pi@192.168.29.127 \
	'pkill pwomxplayer; pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B'