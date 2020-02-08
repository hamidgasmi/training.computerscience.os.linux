#Display files content
cat file1Name file2Name
#Editor
nano myfileName 
#2. Create a file
touch myfile.sh
#3. Create a file of a specific size
dd if=/dev/zero of=my10GFile.data bs=1M count=10240

# Get current location:
pwd
# Change Directory to home:
cd ~ (home directory) 
# Rename a directory/file 
Mv filename.ext filename.ext 
# Remove an empty directory 
rm –d DIRECTORYNAME 
rmdir DIRECTORYNAME 
# Remove an non empty directory 
# use the recursive (-r) option 
rm –r DIRECTORYNAME 
# Remove a file 
rm -rf FILENAME 

df -h
lsblk

#Open a PDF file:
evince myPDFFile.pdf

#Unzip a file
sudo apt-get install unzip
unzip file.zip -d destination_folder