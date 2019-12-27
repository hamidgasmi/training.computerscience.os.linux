#1. Installation:
#1.1 Uninstall Old Versions of Docker:
sudo apt-get remove docker docker-engine docker.io
#1.2 Install the new version of docker
sudo apt-get install docker.io #Ubuntu/Debian
yum install docker # RedHat/CentOS
#2. Start/stop and automate Docker
#2.1. Start and Automate Docker
sudo systemctl start docker
sudo systemctl enable docker
#2.2. Stop and Automate Docker
sudo systemctl stop docker
sudo systemctl disable docker
#3. Version:
docker --version