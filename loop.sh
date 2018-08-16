#!/usr/bin/env bash

while true; do

        #@@@@@@ --- 1st SET --- @@@@@@#

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

        #@@@@@@ --- 2nd SET --- @@@@@@#

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

        #@@@@@@ --- 3rd SET --- @@@@@@#

        ./listen.sh
        # stream 3
        avconv -re -i /home/pi/video3/*.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # kill listeners
        ./kill.sh pwomxplayer
        # play local video 3
        ./play-local.sh 3
        # play local video 3
        omxplayer /home/pi/video3/local/*.mp4
        # end local 3 on tiles
        ./kill.sh omxplayer

        #@@@@@@ --- 4th SET --- @@@@@@#

        ./listen.sh
        # stream 4
        avconv -re -i /home/pi/video4/*.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # kill listeners
        ./kill.sh pwomxplayer
        # play local video 4
        ./play-local.sh 4
        # play local video 4
        omxplayer /home/pi/video4/local/*.mp4
        # end local 4 on tiles
        ./kill.sh omxplayer

        #@@@@@@ --- 5th SET --- @@@@@@#

        ./listen.sh
        # stream 4
        avconv -re -i /home/pi/video5/*.mp4 -vcodec copy -f avi -an udp://239.0.1.23:1234
        # kill listeners
        ./kill.sh pwomxplayer
        # play local video 5
        ./play-local.sh 5
        # play local video 5
        omxplayer /home/pi/video5/local/*.mp4
        # end local 5 on tiles
        ./kill.sh omxplayer

done
