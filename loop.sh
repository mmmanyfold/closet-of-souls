#!/usr/bin/env bash

while true; do
        ./listen.sh
        echo "Streaming video"
        # stream 1
        avconv -re -i /home/pi/video1/*.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # kill piwall listeners
        ./kill.sh pwomxplayer
        # play local 1 on tiles
        ./play-local.sh 1
        # play local 1
        omxplayer /home/pi/video1/local/*.mp4
        # end local 1 on tiles
        ./kill.sh omxplayer
        # start listening again
        ./listen.sh
        # stream 2
        avconv -re -i /home/pi/video2/*.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # kill listeners
        ./kill.sh pwomxplayer
        # play local video 2
        ./play-local.sh 2
        # play local video 2
        omxplayer /home/pi/video2/local/*.mp4
        # end local 2 on tiles
        ./kill.sh omxplayer

        echo "Playing second video"
        #omxplayer ../*.mp4
done
