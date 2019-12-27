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
