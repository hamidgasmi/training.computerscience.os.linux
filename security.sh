#1. sudo: it originally stood for "superuser do" as the older versions of sudo were designed to run commands only as the superuser 
#1.1. Check privileges: 
sudo whoami
#1.2 Run as Super User:
sudo su
#3. Fle Permission: 
#3.1 Display file permission
ls -l
#3.2 Modify access to a file:
chmod 400 MyFile
#3.3 Modify the owner of a file:
chown hamid filename
#3.3 Modify the owner and group of a file:
chown hamid:hamid filename
#4. ssh
#4.2. ssh Agent forwarding
#.... Adding the private key (PEM file) to the key chain
ssh-add -k MyKeyPair.pem
#.... Check whether the private key is properly added to the key chain
ssh-add -L
#.... Access the Bastion Host (Public instance)
ssh -A user@ec2-3-90-235-45
#.... Access the private instance
ssh user@10.0.0.25
