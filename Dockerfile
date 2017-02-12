FROM openjdk:8

RUN apt-get update

RUN apt-get install -y vim wget

RUN wget http://apache.cc.uoc.gr/tomcat/tomcat-8/v8.5.11/bin/apache-tomcat-8.5.11.tar.gz

RUN cp /apache-tomcat-8.5.11.tar.gz /usr/local

RUN cd /usr/local && tar xvfz /apache-tomcat-8.5.11.tar.gz

ENV CATALINA_HOME /usr/local/apache-tomcat-8.5.11

ADD spring-webapp.war $CATALINA_HOME/webapps/

ENTRYPOINT ["/usr/local/apache-tomcat-8.5.11/bin/catalina.sh", "jpda", "run"]