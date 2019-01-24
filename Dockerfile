# First docker file from lengmo
# VERSION 1.0.0
# Author: lengmo

FROM tomcat:8.5.35

MAINTAINER lengmo@towantto.com

ENV WORK_PATH /usr/local/tomcat/conf

ENV SERVER_CONF_FILE_NAME server.xml

RUN rm $WORK_PATH/$SERVER_CONF_FILE_NAME

COPY  ./$SERVER_CONF_FILE_NAME $WORK_PATH/