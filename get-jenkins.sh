#/bin/bash

sudo yum -y remove java
sudo yum -y install java-1.8.0-openjdk
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum -y install jenkins-2.164.2
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Source: https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Red+Hat+distributions
# More: https://jenkins.io/doc/book/installing/
