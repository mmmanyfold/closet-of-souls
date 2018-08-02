#!/usr/bin/env bash

ssh pi@192.168.50.34 \
	'sudo halt' & \
ssh pi@192.168.50.83 \
	'sudo halt' & \
ssh pi@192.168.50.47 \
	'sudo halt' & \
ssh pi@192.168.50.92 \
	'sudo halt' & \
ssh pi@192.168.50.13 \
	'sudo halt' & \
ssh pi@192.168.50.199 \
	'sudo halt'