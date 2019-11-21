#1 - Install git:
sudo apt-get update
sudo apt-get install git -y
#2 - Configure the username
git config --global user.name "Hamid Gasmi"
#3 - Configure the email
git config --global user.email "mamid1706@hotmail.fr"
#4 Clone a project: training.computerscience.linux.git
cd ~/source/
git clone https://github.com/hamidgasmi/training.computerscience.linux.git
#5 Pull: Ensure our master branch is up-to-date:
cd training.computerscience.versioncontrol
git pull https://github.com/hamidgasmi/training.computerscience.linux.git master
#6 Create a new branch: the new branch is local at this point
get checkout -b getstartedbranch
#7 Git Status: Check git status
git status
#8 Add all file of the directory to the Git staging area:
git add .
#9 Add only 1 file:
git add ~/source/training.computerscience.linux/gitgetstarted.sh
#10 Push stagged files to github
git commit -m "Get started files for linux repository"
git push https://github.com/hamidgasmi/training.computerscience.linux.git getstartedbranch
#11 Merge remote branch to remote master branch

#12 Delete the remote branch
git push -d https://github.com/hamidgasmi/training.computerscience.linux.git getstartedbranch
#13 Delete Local branch:
#13.1 Pull to master branch:
git pull https://github.com/hamidgasmi/training.computerscience.linux.git master
#13.2 Switch to master branch:
git checkout master
#13.3 Delete Local branch
git branch -d gitgetstartedbranch
