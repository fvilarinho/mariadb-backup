#!/bin/bash

timestamp=`date +"%Y%m%d%H%M"`
backupFile="$DATABASE_BACKUP_DIR/dump-$DATABASE_NAME-$timestamp.sql"

echo "Backing up DATABASE_NAME in $backupFile..."
mysqldump -h $DATABASE_SERVICE_HOSTNAME -u $DATABASE_SERVICE_USERNAME -p$DATABASE_SERVICE_PASSWORD $DATABASE_NAME > $backupFile
echo "Backup done."