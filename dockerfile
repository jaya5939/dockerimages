FROM centos
RUN yum update -y && yum install wget -y && yum install java -y && yum install unzip -y
RUN mkdir /opt/tomcat
RUN wget http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51-windows-x64.zip -O /tmp/tomcat.zip
RUN cd /tmp/ && unzip tomcat.zip
RUN cp -rf  /tmp/apache-tomcat-8.5.51/* /opt/tomcat
