#!/usr/bin/env bash

type=$1
while true; do
        ./listen-piwall.sh
        if [[ $type == "master" ]]; then
                echo "Streaming video"
                # stream 1
                avconv -re -i ../video1/INDONESIA.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
                # play local 1
                omxplayer /home/pi/video1/C1_low.mp4
                # kill and start listening again
                ./listen-piwall.#!/bin/sh
                # stream 2
                avconv -re -i ../video1/INDONESIA.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
                # play local video 2
                omxplayer /home/pi/video1/INDONESIA.mp4
        else
                omxplayer ../video1/*.mp4
                echo "Done with video"
                if pgrep -x "pwomxplayer" > /dev/null
                then
                        echo "Already listening"
                else
                        echo "Starting listening"
                        #pushd
                        cd /home/pi && pwomxplayer -A udp://239.0.1.23:1234?buffer_size=1200000B
                        #popd
                        cd ..
                fi
        fi

        echo "Playing second video"
        #omxplayer ../*.mp4
done
