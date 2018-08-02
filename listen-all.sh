#!/bin/bash

ssh pi@192.168.50.34 \
	'pkill pwomxplayer; pwomxplayer --tile-code=41 udp://239.0.1.23:1234?buffer_size=1200000B' &
ssh pi@192.168.50.83 \
	'pkill pwomxplayer; pwomxplayer --tile-code=41 udp://239.0.1.23:1234?buffer_size=1200000B' &
ssh pi@192.168.50.47 \
	'pkill pwomxplayer; pwomxplayer --tile-code=42 udp://239.0.1.23:1234?buffer_size=1200000B' &
ssh pi@192.168.50.92 \
	'pkill pwomxplayer; pwomxplayer --tile-code=42 udp://239.0.1.23:1234?buffer_size=1200000B' &
ssh pi@192.168.50.13 \
	'pkill pwomxplayer; pwomxplayer --tile-code=43 udp://239.0.1.23:1234?buffer_size=1200000B' &
ssh pi@192.168.50.199 \
	'pkill pwomxplayer; pwomxplayer --tile-code=44 udp://239.0.1.23:1234?buffer_size=1200000B'