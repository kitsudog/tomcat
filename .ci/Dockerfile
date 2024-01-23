FROM tomcat:6-jre8
COPY skywalking-agent/ /skywalking-agent/
COPY jdk1.8.0_391/jre/ /usr/lib/jvm/java-8-openjdk-amd64/jre/
COPY script/ /script/
ENV CATALINA_OPTS=-javaagent:/skywalking-agent/skywalking-agent.jar \
    JAVA_OPTS=-Duser.timezone=Asia/Shanghai \
    TZ=Asia/Shanghai
VOLUME [ "/usr/local/tomcat/logs" ]
ENV HTTP_PORT=8080 \
    AJP_PORT=8009 \
    MANAGER_PORT=8005
CMD [ "/script/start.sh" ]