#!/bin/bash
docker -help
name=`echo $?`
if [ $name -eq 0 ]; then
echo "Docker Already Installed"
else
echo "Installing Docker"
sudo yum install docker -y
sudo systemctl enable docker
sudo systemctl restart docker
sudo usermod -aG docker ec2-user
echo "Docker Installed"
echo "Setting up docker-compose"
sudo curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "Installed Docker Compose"
fi
