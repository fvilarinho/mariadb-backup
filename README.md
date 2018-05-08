** Introduction **

Database Backup is an application that allows you to backup a MySQL / MariaDB database on a recurring basis. 

** Last version **

* [1.0.0](https://bitbucket.org/innovativethinking/databasebackup) ![Run Status](https://api.shippable.com/projects/5ae3c2da40a97a070030b978/badge?branch=master)

** How to run it **

docker run -e DATABASE_HOSTNAME=hostname -e DATABASE_USERNAME=username -e DATABASE_PASSWORD=password -e DATABASE_NAME=name -e DATABASE_BACKUP_DIR=backupDir -e DATABASE_BACKUP_CRONTAB=crontabExpression -v hostDir:backupDir -d innovativethinking/databasebackup

Then the backup files will be generated in backupDir of the container and can be accessed through the hostDir of the host machine.

** Author **

Felipe Vilarinho 

fvilarinho@innovativethinking.com.br

+55 11 9 8222-9197