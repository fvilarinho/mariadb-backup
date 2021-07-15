FROM ghcr.io/concepting-com-br/base-image:1.1.0

LABEL maintainer="fvilarinho@concepting.com.br"

USER root

RUN apk update && \
    apk --no-cache add mysql-client
    
COPY bin/run.sh ${BIN_DIR}/
COPY bin/startup.sh ${BIN_DIR}/child-startup.sh
COPY .env ${ETC_DIR}/.release
    
RUN chmod +x ${BIN_DIR}/*.sh && \
    chown -R user:group ${HOME_DIR}/ && \
    chmod -R o-rwx ${HOME_DIR}/

CMD ["${BIN_DIR}/child-startup.sh"]
