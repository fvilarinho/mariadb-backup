#!/bin/bash

source $BIN_DIR/functions.sh

SETTINGS=$(getSettings)
SERVER_NAME=`echo $SETTINGS | jq -r .serverName.value`
SERVER_PORT=`echo $SETTINGS | jq -r .serverPort.value`
USER=`echo $SETTINGS | jq -r .user.value`
PASSWORD=`echo $SETTINGS | jq -r .password.value`
DATABASE_NAME=`echo $SETTINGS | jq -r .databaseName.value`
BACKUP_DIR=`echo $SETTINGS | jq -r .backupDir.value`
TIMESTAMP=`date +"%Y%m%d%H%M"`
BACKUP_FILE="$BACKUP_DIR/dump-$DATABASE_NAME-$TIMESTAMP.sql"

if [ ! -d "$BACKUP_DIR" ]; then
    echo "Creating the backup directory..."
    
	mkdir -p $BACKUP_DIR
	
	echo "Backup directory created!"
fi

echo "Backing up $DATABASE_NAME in $BACKUP_FILE..."
mysqldump --single-transaction=true -h $SERVER_NAME -P $SERVER_PORT -u $USER -p$PASSWORD $DATABASE_NAME > $BACKUP_FILE
echo "Backup done."