FROM alpine:latest

MAINTAINER Felipe Vilarinho <fvilarinho@innovativethinking.com.br>

ENV DATABASE_HOSTNAME=localhost
ENV DATABASE_USERNAME=root
ENV DATABASE_PASSWORD=
ENV DATABASE_NAME=test
ENV DATABASE_BACKUP_DIR=/opt/backup/data
ENV DATABASE_BACKUP_INTERVAL=15

RUN apk update && \
    apk --no-cache add vim ca-certificates tar gzip bash bash-completion tzdata unzip curl wget bind-tools net-tools openssh-client mysql-client && \
    cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    echo "America/Sao_Paulo" > /etc/timezone && \
    apk del tzdata && \
    mkdir -p /opt/backup/data
    
ADD src/scripts/run.sh /opt/backup/  
    
RUN chmod +x /opt/backup/*.sh && \
    echo "*/$DATABASE_BACKUP_INTERVAL * * * * /opt/backup/run.sh" > /etc/crontabs/root    
    
ENTRYPOINT ["crond", "-f"]
