#!/bin/bash

source $BIN_DIR/functions.sh

SETTINGS=$(getSettings)
CRONTAB=`echo "$SETTINGS" | jq -r .crontab`

echo "$CRONTAB $BIN_DIR/run.sh" > /etc/crontabs/root

crond