#!/bin/bash

# Set hostname
sudo hostnamectl set-hostname Jenkins

# Update system packages
sudo yum update -y

# Install Java 17
sudo yum install -y java-17-amazon-corretto-devel
java -version

# Install Maven
sudo yum install -y maven
mvn --version

# Install Git
echo "Install git"
sudo yum install -y git

# Install Docker
echo "Install Docker engine"
sudo yum install -y docker
sudo service docker start
sudo chkconfig docker on
sudo usermod -a -G docker ec2-user

# Apply the group membership without logging out
newgrp docker

# Verify Docker installation
docker version
