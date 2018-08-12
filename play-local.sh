#!/usr/bin/env bash
videoNum=$1

ssh pi@192.168.29.234 << EOF
  omxplayer ../video$videoNum/*.mp4
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
  exit
EOF &

ssh pi@192.168.29.245 << EOF
  omxplayer ../video$videoNum/*.mp4
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
  exit
EOF &

ssh pi@192.168.29.241 << EOF
  omxplayer ../video$videoNum/*.mp4
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
  exit
EOF &

ssh pi@192.168.29.148 << EOF
  omxplayer ../video$videoNum/*.mp4
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
  exit
EOF &

ssh pi@192.168.29.249 << EOF
  omxplayer ../video$videoNum/*.mp4
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
  exit
EOF &

ssh pi@192.168.29.213 << EOF
  omxplayer ../video$videoNum/*.mp4
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
    exit
EOF &
