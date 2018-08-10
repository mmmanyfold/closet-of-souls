#!/usr/bin/env bash

type=$1
while true; do
        if [[ $type == "master" ]]; then
                echo "Streaming video"
                avconv -re -i ../video1/INDONESIA.mp4 -vcodec copy -f avi -an upd://239.0.1.23:1234
                #call kill pwomplayer
                avconv -re -i ../video1/C1_low.mp4 -vcodec copy -f avi -an upd://239.0.1.23:1234
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
