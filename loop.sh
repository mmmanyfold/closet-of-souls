#!/usr/bin/env bash

while true; do
        ./listen-piwall.sh
        echo "Streaming video"
        # stream 1
        avconv -re -i ../video1/INDONESIA.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # kill piwall listeners
        ./kill-piwall.sh pwomxplayer
        # play local 1 on tiles
        ./play-local.sh 1
        # play local 1
        omxplayer /home/pi/video1/C1_low.mp4
        # end local 1 on tiles
        ./kill-piwall.sh omxplayer
        # start listening again
        ./listen-piwall.sh
        # stream 2
        avconv -re -i ../video1/INDONESIA.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # kill piwall listeners
        ./kill-piwall.sh pwomxplayer
        # play local video 2
        ./play-local.sh 1
        # play local video 2
        omxplayer /home/pi/video1/INDONESIA.mp4
        # end local 2 on tiles
        ./kill-piwall.sh omxplayer

        echo "Playing second video"
        #omxplayer ../*.mp4
done
