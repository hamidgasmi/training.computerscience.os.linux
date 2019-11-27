#1. Installation:
#1.1 First Installation:
sudo apt-get install git -y
#1.2 Upgrade:
sudo apt-get update

#2. Configuration:
#2.1 Configure the username
git config --global user.name "Hamid Gasmi"
#2.2 Configure the email @
git config --global user.email "mamid1706@hotmail.fr"

#3 Get started with repositories
#3.1 Clone a remote project: training.computerscience.linux.git
git clone https://github.com/hamidgasmi/training.computerscience.linux.git
#3.2 Pull: Ensure our master branch is up-to-date:
git pull origin master

#4. Branches:
#4.1. Create a branch and switch to it: it is local at this point
git checkout -b getstartedbranch
#4.2. Switch to an existing branch:
git checkout master
#4.3. List remote branches
git branch -r
#4.4. List local branches
git branch -l
#4.5. List All branches:
git branch -a
#4.6. Delete a local branch
git branch -d gitgetstartedbranch

#5. Staging:
#5.1. Check stagged files:
git status
#5.2. Add all file of the directory to the Git staging area:
git add .
#5.2 Add only 1 file:
git add ~/source/training.computerscience.linux/gitgetstarted.sh
#5.3 Remove a file from stagging area:
git reset HEAD gitgetstarted.sh~

#6. Commits
#6.1. Commit staged files:
git commit -m "Get started files for linux repository"
#6.2.
#6.3. Remove a file from a non-pushed commit:

#7. Pushing:
#7.1. Push all committed files
git push origin  getstartedbranch
#7.2. Delete a remote branch from the branch's local git repository:
git push -d origin startedbranc
#7.3. Delete a remote branch from any local git location
git push -d https://github.com/hamidgasmi/training.computerscience.linux.git get 

#8. Merging:
#8.1 Merge a remote branch to a remote master branch

