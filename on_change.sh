#!/bin/sh

FILE="/var/lib/esp-controller/lg_tv_ethernet_connection"

if [ -e "$FILE" ]; then
  /home/user/tplink_port/venv/bin/python3 /home/user/tplink_port/tplink_port.py 8 enable
else
  /home/user/tplink_port/venv/bin/python3 /home/user/tplink_port/tplink_port.py 8 disable
fi
