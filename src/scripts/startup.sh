#!/bin/bash

mkdir -p $DATABASE_BACKUP_DIR

echo "$DATABASE_BACKUP_CRONTAB /opt/backup/run.sh" > /etc/crontabs/root

crond -f