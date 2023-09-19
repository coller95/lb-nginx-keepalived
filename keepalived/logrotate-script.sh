#!/bin/sh

while true; do
    logrotate /etc/logrotate.conf
    sleep 86400  # Sleep for 24 hours (86400 seconds)
done