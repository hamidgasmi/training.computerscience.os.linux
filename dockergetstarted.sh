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
#2.3. Version:
docker --version
#2.4. Docker’s network range
ip a | grep docker | grep inet inet 172.17.42.1/16 scope global docker0
#3. Show containers
#3.1. Show running containers 
docker ps
#3.2. Show all containers (including the non-running ones):
docker ps -a
#4. Create a container with an image from docker hub
#4.1. Run in foreground
docker run --name test-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:8.0
#4.2. Run in background
docker run --detach --name test-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:8.0
#5. Start/Stop a container
#5.1 Stop a container
docker stop test-mysql
#5.2 Start a container
docker start test-mysql
#6. Remove a stopped container
docker rm test-mysql
docker run --detach --name=test-mysql --env="MYSQL_ROOT_PASSWORD=mypassword" mysql
#7. Log
#7.1. Show logs:
docker logs test-mysql
#8. Retrieve the container information (E.g., IP address):
docker inspect test-mysql
mysql -uroot -proot -h 172.17.0.2 -P 3306