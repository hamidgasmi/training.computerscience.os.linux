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
#4.3. Create a docker with a link to another one (here wordpress with a link to test-mysql)
#.... If MySQL container restarted (it gets a new IP @), wordpress will be updated by Docker accordingly
docker run --detach --name test-wordpress --link test-mysql:mysql wordpres
#4.4. Expose the MySQL container to the outside world: 
#...... mapping the container’s MySQL port to the host machine port 
#...... using the publish flag
#...... We can then access the MySQL container directly from the machine’s port 6603
docker run --detach --name=test-mysql --env="MYSQL_ROOT_PASSWORD=root" --publish 6603:3306 mysql
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
#... IP @ is changed when the container is restarted:
docker inspect test-mysql
#9. Connection to a MySQL server (IP @)
mysql -uroot -proot -h 172.17.0.2 -P 3306
#10. Configuration management:
#11. Data Storage:
https://severalnines.com/database-blog/mysql-docker-containers-understanding-basics