#!/bin/bash
if [ "$HTTP_PORT" != 8080 ];then
  sed -i 's#<Connector port="8080" protocol="HTTP/1.1"#<Connector port="'${HTTP_PORT}'" protocol="HTTP/1.1"#' /usr/local/tomcat/conf/server.xml
fi
if [ "$AJP_PORT" != 8009 ];then
  sed -i 's#<Connector port="8009" protocol="AJP/1.3" redirectPort="8443" />#<Connector port="'${AJP_PORT}'" protocol="AJP/1.3" redirectPort="8443" />#' /usr/local/tomcat/conf/server.xml
fi
if [ "$MANAGER_PORT" != 8005 ];then
  sed -i 's#<Server port="28005" shutdown="SHUTDOWN">#<Server port="'${MANAGER_PORT}'" shutdown="SHUTDOWN">#' /usr/local/tomcat/conf/server.xml
fi
catalina.sh run