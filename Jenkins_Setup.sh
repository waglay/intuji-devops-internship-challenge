#!/bin/bash
sudo yum install java-17-amazon-corretto -y
sudo yum install git -y
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins
