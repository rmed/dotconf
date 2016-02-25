#!/usr/bin/env bash

# Wait for running instances of offlineimap
while pkill --signal 0 offlineimap
do
    sleep 2
done

offlineimap > ~/mail-log 2>&1 &
