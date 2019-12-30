#0. Watch the entire Star Wars movie through the CLI :)
telnet towel.blinkenlights.nl #old command version
nc towel.blinkenlights.nl 23 #new version without telnet

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
#4. Interact with HTTP
#4.1 Download a file with Curl
curl https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lesson_files/07_hybrid_scaling/1_LBandASG/CLBandHealth/cat1.jpg > cat1.jpg

Wget

#5. ssh
 #Log in to your system as the root user: 
ssh root@server_ip_address

#Services
#Status
service httpd status 