#!/bin/bash
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl restart docker
sudo usermod -aG docker ec2-user