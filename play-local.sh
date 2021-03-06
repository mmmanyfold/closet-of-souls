#!/usr/bin/env bash
videoNum=$1

# ./play-local.sh <video number>
# ./play-local.sh 1

ssh pi@192.168.29.234 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.245 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.241 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.148 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.249 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.213 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.217 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.202 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.122 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.243 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.185 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

ssh pi@192.168.29.127 \
  "nohup omxplayer -b /home/pi/video$videoNum/*.mp4 -o local &> /dev/null & exit"

echo "Done starting videos"
