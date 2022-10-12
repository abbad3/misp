#!/bin/bash

set -eu

if [ ! -f /clamav/main.cvd ]; then
    echo "Starting initial definition download"
    /usr/bin/freshclam
fi

echo "Starting the update daemon"
/usr/bin/freshclam -d -c 6

echo "Starting clamav daemon"
/usr/sbin/clamd
