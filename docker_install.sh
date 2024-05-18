#!/bin/bash
docker -help
name=`echo $?`
if [ $name -eq 0 ]; then
echo "Docker Already Installed"
else
echo "Installing Docker"
yum install docker -y
systemctl enable docker
systemctl restart docker
usermod -aG docker ec2-user,root
echo "Docker Installed"
echo "Setting up docker-compose"
curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "Installed Docker Compose"
fi
