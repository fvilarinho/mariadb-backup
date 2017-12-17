** Introdução **

Database Backup é uma aplicação que permite efetuar o backup de um banco de dados MySQL/MariaDB de maneira recorrente. 

** Última versão **

* [1.0.0](https://circleci.com/bb/concepting/databasebackup/tree/master) ![CircleCI](https://circleci.com/bb/concepting/databasebackup.svg?style=svg)

** Como iniciar a aplicação **

docker run -e DATABASE_HOSTNAME=<hostname> -e DATABASE_USERNAME=<username> -e DATABASE_PASSWORD=<password> -e DATABASE_NAME=<name> -e DATABASE_BACKUP_DIR=/opt/backup/data -e DATABASE_BACKUP_INTERVAL=<interval> -v <host-dir>:/opt/backup/data -d concepting/database-backup

Em seguida, os arquivos de backup serão gerados no diretório /opt/backup/data do container e poderá ser acessado através do diretório <host-dir> da máquina host.

** Author **

Felipe Vilarinho 

fvilarinho@innovativethinking.com.br

+55 11 9 8222-9197