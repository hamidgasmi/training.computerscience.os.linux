#01. Locations
#01.1. Get current location:
pwd
#01.2. Change Directory to home:
cd ~ (home directory)

#02. Search + Regex
find [-H] [-L] [-P] [-D debugopts] [-Olevel] [starting-point...] [expression]
#02.01. Find by name + case sensitive
find . -name "*.ods"
#02.02. Find by name + case insensitive
find . -iname "*.ods"
#02.03. Find by type
# ..... f -> regular file
# ..... d – directory
# ..... l – symbolic link
# ..... c – character devices (a file that refers to a device)
# ..... b – block devices
find / -type c
find . -type f -name "*.conf"
#02.04. Finding files by size
#...... c – bytes
#...... k – Kilobytes
#...... M – Megabytes
#...... G – Gigabytes
#...... b – 512-byte blocks
find / -size +1000MB

#03. Directories:
#03.1. Rename a directory/file 
Mv filename.ext filename.ext 
#03.2. Remove an empty directory 
rm –d DIRECTORYNAME 
rmdir DIRECTORYNAME 
#03.3. Remove an non empty directory 
#.... Use the recursive (-r) option 
rm –r DIRECTORYNAME 
#03.4. Remove a file 
rm -rf FILENAME 

#04. File:
#04.1. Display files content
cat file1Name file2Name
#04.2. Edit a file
nano myfileName 
#04.3. Create a file
touch myfile.sh
#04.4. Create a file of a specific size
dd if=/dev/zero of=my10GFile.data bs=1M count=10240
#04.5. Compare 2 files:
#04.5.1. diff
diff -s myFile1 myFile2 # check if 2 files are identitical
Files myFile1 and myFile2 are identical
#...... For more details:
man diff 
#04.5.2. More commands: 
man colordiff
man wdiff
#https://www.tecmint.com/best-linux-file-diff-tools-comparison/

#05. Compress/Uncompress a file
#05.0.1. Install unzip:
sudo apt-get install unzip
#05.0.2. Install unrar-free:
sudo apt-get install unrar-free
#05.1.1. Unzip a file
unzip file.zip -d destination_folder
#05.1.2. Unrar a file
unrar -x file.rar

#99. Miscellaneous
#99.1 Open a PDF file:
evince myPDFFile.pdf

df -h
lsblk