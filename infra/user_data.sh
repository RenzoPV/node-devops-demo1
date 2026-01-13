#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
service docker start
usermod -aG docker ec2-user

docker run -d -p 5000:5000 node-devops-demo