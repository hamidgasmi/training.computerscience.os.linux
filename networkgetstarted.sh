#1. Network File Sytem
#1.1. Display all the file systems that are currently mounted
df -k
df -h
#1.2. Mount a new folder
#.... Create a file system with the device ID 
sudo mkfs -t ext4 deviceID
#.... Mount the device to the directory below 
sudo mount deviceID /direName
# Show the file system 

#2. DNS:
#2.1. Send a DNS request:
nslookup www.google.com

#3. Ping
#3.1. Ping a server 
ping 10.0.2.9  
#^C (CTL + C) to stop the ping
#Display the details about the networking cards 
ifconfig 
#Interact with HTTP
 curl
 Wget

 #ssh
 #Log in to your system as the root user: 
ssh root@server_ip_address

#Services
#Status
service httpd status 