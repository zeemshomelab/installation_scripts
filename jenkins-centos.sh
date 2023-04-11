## Install and Configure Jenkins Server on CentOS 7

#!/bin/bash
## Install and Configure Jenkins Server on CentOS 7


sudo yum -y install epel-release

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade

# Add required dependencies for the jenkins package

sudo yum install java-11-openjdk

sudo yum install jenkins

sudo systemctl daemon-reload


sudo systemctl start jenkins

sudo systemctl enable jenkins

systemctl status jenkins

sudo ss -tunelp | grep 8080

cat /var/lib/jenkins/secrets/initialAdminPassword

sudo groupadd --system jenkins

sudo useradd -s /sbin/nologin --system -g jenkins jenkins

sudo usermod -aG docker jenkins

sudo usermod -aG docker serveradmin

sudo systemctl restart docker

sudo systemctl restart jenkins


### https://computingforgeeks.com/running-jenkins-server-in-docker-container-systemd/#### Try this later
