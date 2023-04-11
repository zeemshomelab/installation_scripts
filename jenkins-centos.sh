


## Install and Configure Jenkins Server on CentOS 7

sudo yum -y install epel-release

sudo yum -y install java-11-openjdk

java -version

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum -y install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo yum -y install jenkins

sudo systemctl start jenkins

sudo systemctl enable jenkins

systemctl status jenkins

sudo ss -tunelp | grep 8080

cat /var/lib/jenkins/secrets/initialAdminPassword

sudo groupadd --system jenkins

sudo useradd -s /sbin/nologin --system -g jenkins jenkins

sudo usermod -aG docker jenkins

### https://computingforgeeks.com/running-jenkins-server-in-docker-container-systemd/#### Try this later
