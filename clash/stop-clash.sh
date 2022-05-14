#!/bin/bash
# save this file to ${HOME}/.config/clash/stop-clash.sh

HOME_PATH="/home/lic"

# read pid file
# PID=$(cat ${HOME_PATH}/.config/clash/clash.pid)
# echo $PID
# kill -9 $PID
rm ${HOME_PATH}/.config/clash/clash.pid
# pkill clash
# systemctl stop clash@lic.service
