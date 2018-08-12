#!/usr/bin/env bash

ssh pi@192.168.29.234 \
	'pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B & exit' & \

ssh pi@192.168.29.245 \
	'pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B & exit' & \

ssh pi@192.168.29.241 \
	'pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B & exit' & \

ssh pi@192.168.29.148 \
	'pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B & exit' & \

ssh pi@192.168.29.249 \
	'pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B & exit' & \

ssh pi@192.168.29.213 \
	'pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B & exit' & \
