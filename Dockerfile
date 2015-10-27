FROM centos:6.6
MAINTAINER noday
RUN yum update -y
RUN yum install -y java
RUN yum install -y tar
RUN curl -O http://apache.fayea.com/tomcat/tomcat-7/v7.0.63/bin/apache-tomcat-7.0.63.tar.gz
RUN tar zxvf apache-tomcat-7.0.63.tar.gz
ENV TOMCAT_HOME /apache-tomcat-7.0.63
ENV CATALINA_HOME /apache-tomcat-7.0.63
CMD $CATALINA_HOME/bin/catalina.sh run
VOLUME ['/var/log', '/tmp', '/mnt']
EXPOSE 8080
