#1. Stress Test:
#1.1 Installation:
sudo apt-get install stress # RedHat/CentOS
sudo yum install stress -y #Ubuntu/Debian
#1.2 Stress:
uptime
stress --cpu 2 --timeout 30
uptime