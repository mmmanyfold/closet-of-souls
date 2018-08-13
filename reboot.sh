#!/usr/bin/env bash

ssh pi@192.168.29.234 \
    'sudo reboot' &
ssh pi@192.168.29.245 \
    'sudo reboot' &
ssh pi@192.168.29.241 \
    'sudo reboot' &
ssh pi@192.168.29.148 \
    'sudo reboot' &
ssh pi@192.168.29.249 \
    'sudo reboot' &
ssh pi@192.168.29.213 \
    'sudo reboot'
