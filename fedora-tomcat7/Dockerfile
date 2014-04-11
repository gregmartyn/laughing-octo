FROM fedora:20

RUN curl http://mirrors.gigenet.com/apache/tomcat/tomcat-7/v7.0.53/bin/apache-tomcat-7.0.53.tar.gz | tar zx && mv apache-tomcat-7.0.53 tomcat
RUN yum install -y java && rm -rf /var/cache/yum

EXPOSE 8080

VOLUME ["/tomcat/webapps","/tomcat/logs"]

CMD /tomcat/bin/startup.sh && tail -f /tomcat/logs/catalina.out
