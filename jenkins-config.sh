#!/bin/sh
sudo yum install -y git java-1.8.0-openjdk-devel aws-cli
# sudo alternatives --config java
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
# sudo java -Djenkins.install.runSetupWizard=false -jar target/jenkins.war  # needs maven (?)
sudo yum install -y jenkins 
sudo service jenkins start
sudo chkconfig --add jenkins
# sudo cat /var/lib/jenkins/secrets/initialAdminPassword # displays password
# put password in variable and use it to unlock jenkins via api (curl?)
# see how it was done here https://github.com/MorganTAtkins/jenkins-in-docker/blob/master/Dockerfile