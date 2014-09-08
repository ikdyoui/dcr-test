FROM centos

RUN yum update -y && yum -y upgrade
RUN yum install -y sudo
RUN yum install -y passwd

RUN yum install -y java-1.7.0-openjdk-devel.x86_64

RUN yum install -y yum-priorities
RUN rpm -Uvh http://mirrors.dotsrc.org/jpackage/6.0/generic/free/RPMS/jpackage-release-6-3.jpp6.noarch.rpm
RUN yum install -y tomcat7-webapps

ENTRYPOINT /etc/init.d/tomcat7 start && /bin/bash
