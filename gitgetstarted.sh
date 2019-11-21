#1 - Install git:
sudo apt-get update
sudo apt-get install git -y
#2 - Configure the username
git config --global user.name "Hamid Gasmi"
#3 - Configure the email
git config --global user.email "mamid1706@hotmail.fr"
#4 Clone a project: training.computerscience.versioncontrol.git
cd ~/source/
git clone https://github.com/hamidgasmi/training.computerscience.versioncontrol.git
#5 Pull: Ensure our master branch is up-to-date:
cd training.computerscience.versioncontrol
git pull https://github.com/hamidgasmi/training.computerscience.versioncontrol.git master
#6 Create a new branch: the new branch is local at this point
get checkout -b getstartedbranch
#7 Git Status: Check git status
git status
#8 Add all file of the directory to the Git staging area:
git add .
#9 Add only 1 file:
git add ~/source/training.computerscience.versioncontrol/gitgetstarted.sh
#10 Push stagged files to github
git commit -m "Get started files for versioncontrol repository"
git push https://github.com/hamidgasmi/training.computerscience.versioncontrol.git getstartedbranch
#12 Delete the remote branch
git push -d https://github.com/hamidgasmi/training.computerscience.versioncontrol.git getstartedbranch
#13 Delete Local branch
git branch -d gitgetstartedbranch
