#!/bin/sh
sudo yum install -y git java-1.8.0-openjdk-devel aws-cli
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins 
sudo service jenkins start
sudo chkconfig --add jenkins