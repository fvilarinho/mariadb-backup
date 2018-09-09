FROM alpine:latest

MAINTAINER Felipe Vilarinho <fvilarinho@innovativethinking.com.br>

ENV DATABASE_SERVICE_HOSTNAME="localhost"
ENV DATABASE_SERVICE_USERNAME="root"
ENV DATABASE_SERVICE_PASSWORD=
ENV DATABASE_SERVICE_NAME="test"
ENV DATABASE_BACKUP_DIR="/opt/backup/data"
ENV DATABASE_BACKUP_CRONTAB="0 * * * *"

RUN apk update && \
    apk --no-cache add vim ca-certificates tar gzip bash bash-completion tzdata unzip curl wget bind-tools net-tools openssh-client mysql-client && \
    cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    echo "America/Sao_Paulo" > /etc/timezone && \
    apk del tzdata
    
ADD src/scripts/run /opt/backup/
ADD src/scripts/startup /opt/backup/  
    
RUN chmod +x /opt/backup/*    
    
ENTRYPOINT ["/opt/backup/startup"]
