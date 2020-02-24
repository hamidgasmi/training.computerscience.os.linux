#1. Locations
#1.1. Get current location:
pwd
#1.2. Change Directory to home:
cd ~ (home directory) 

#2. Directories:
#2.1. Rename a directory/file 
Mv filename.ext filename.ext 
#2.2. Remove an empty directory 
rm –d DIRECTORYNAME 
rmdir DIRECTORYNAME 
#2.3. Remove an non empty directory 
#.... Use the recursive (-r) option 
rm –r DIRECTORYNAME 
#2.4. Remove a file 
rm -rf FILENAME 

#3. File:
#3.1. Display files content
cat file1Name file2Name
#3.2. Edit a file
nano myfileName 
#3.3. Create a file
touch myfile.sh
#3.4. Create a file of a specific size
dd if=/dev/zero of=my10GFile.data bs=1M count=10240
#3.5. Compare 2 files:
#3.5.1. diff
diff -s myFile1 myFile2 # check if 2 files are identitical
Files myFile1 and myFile2 are identical
#...... For more details:
man diff 
#3.5.2. More commands: 
man colordiff
man wdiff
#https://www.tecmint.com/best-linux-file-diff-tools-comparison/

#4. Compress/Uncompress a file
#4.0.1. Install unzip:
sudo apt-get install unzip
#4.0.2. Install unrar-free:
sudo apt-get install unrar-free
#4.1.1. Unzip a file
unzip file.zip -d destination_folder
#4.1.2. Unrar a file
unrar -x file.rar

#5. Miscellaneous
#5.1 Open a PDF file:
evince myPDFFile.pdf

df -h
lsblk