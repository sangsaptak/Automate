FROM centos:latest

RUN yum install sudo -y
RUN yum install wget -y
RUN yum install git -y
RUN yum install vim -y
RUN yum install file-5.33.el8.x86_64 -y
RUN sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install jenkins -y
RUN yum install java-11-openjdk.x86_64 -y
RUN yum install /sbin/service -y
RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL">>/etc/sudoers
CMD sudo service jenkins start -DEFOREGROUND && /bin/bash
Expose 8080
