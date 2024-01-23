FROM tomcat:6-jre8
COPY skywalking-agent/ /skywalking-agent/
COPY jdk1.8.0_391/jre/ /usr/lib/jvm/java-8-openjdk-amd64/jre/
ENV CATALINA_OPTS=-javaagent:/skywalking-agent/skywalking-agent.jar \
    JAVA_OPTS=-Duser.timezone=Asia/Shanghai \
    TZ=Asia/Shanghai
VOLUME [ "/usr/local/tomcat/logs" ]