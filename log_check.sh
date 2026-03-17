#!/bin/bash

LOGFILE="/var/log/syslog"

echo "===== ERROR LOG ====="
grep -i error $LOGFILE | tail -n 20

echo "===== WARNING LOG ====="
grep -i warning $LOGFILE | tail -n 20

echo "===== LOGIN FAIL ====="
grep "Failed password" $LOGFILE | tail -n 10
