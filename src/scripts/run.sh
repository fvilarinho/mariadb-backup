#!/bin/bash

timestamp=`date +"%Y%m%d%H%M"`

mysqldump -h $DATABASE_HOSTNAME -u $DATABASE_USERNAME -p$DATABASE_PASSWORD $DATABASE_NAME > $DATABASE_BACKUP_DIR/dump-$DATABASE_NAME-$timestamp.sql