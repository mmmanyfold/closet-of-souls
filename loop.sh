#!/usr/bin/env bash

while true; do
        ./listen-piwall.sh
        echo "Streaming video"
        # stream 1
        avconv -re -i ../video1/INDONESIA.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # play local 1
        omxplayer /home/pi/video1/C1_low.mp4
        ./play-local.sh 1
        # kill and start listening again
        ./kill-piwall.sh
        ./listen-piwall.sh
        # stream 2
        avconv -re -i ../video1/INDONESIA.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # play local video 2
        omxplayer /home/pi/video1/INDONESIA.mp4
        ./play-local.sh 1

        echo "Playing second video"
        #omxplayer ../*.mp4
done
