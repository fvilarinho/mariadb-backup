#!/bin/bash

source $BIN_DIR/functions.sh

SETTINGS=$(getSettings)
SERVER_NAME=`echo $SETTINGS | jq -r .serverName`
SERVER_PORT=`echo $SETTINGS | jq -r .serverPort`
USER=`echo $SETTINGS | jq -r .user`
PASSWORD=`echo $SETTINGS | jq -r .password`
NAME=`echo $SETTINGS | jq -r .name`
BACKUP_DIR=`echo $SETTINGS | jq -r .backupDir`
TIMESTAMP=`date +"%Y%m%d%H%M"`
BACKUP_FILE="$BACKUP_DIR/dump-$NAME-$TIMESTAMP.sql"

if [ ! -d "$BACKUP_DIR" ]; then
    echo "Creating the backup directory..."
    
	mkdir -p $BACKUP_DIR
	
	echo "Backup directory created!"
fi

echo "Backing up $NAME in $BACKUP_FILE..."
mysqldump --single-transaction=true -h $SERVER_NAME -P $SERVER_PORT -u $USER -p$PASSWORD $NAME > $BACKUP_FILE
echo "Backup done."