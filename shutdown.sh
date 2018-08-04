#!/usr/bin/env bash

ssh pi@192.168.29.234 \
	'sudo halt' & \
ssh pi@192.168.29.245 \
	'sudo halt' & \
ssh pi@192.168.29.241 \
	'sudo halt' & \
ssh pi@192.168.29.148 \
	'sudo halt' & \
ssh pi@192.168.29.249 \
	'sudo halt' & \
ssh pi@192.168.29.213 \
	'sudo halt'