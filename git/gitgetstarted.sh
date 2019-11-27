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

#3. GitHub
#3.1. SSH
#3.1.1. Checking for existing SSH keys:
#...... It should one of the following: id_rsa.pub, id_ecdsa.pub, id_ed25519.pub
ls -al ~/.ssh
#3.1.2. Generating a new SSH key and adding it to the ssh-agent:
ssh-keygen -t rsa -b 4096 -C "mamid1706@hotmail.fr"
# > Enter a file in which to save the key (/home/you/.ssh/id_rsa): [Press enter]
#......This accepts the default file location.
# > Enter passphrase (empty for no passphrase): [Type a secure passphrase]
# > Enter same passphrase again: [Type passphrase again]
#3.1.3. Adding my ssh key to the ssh-agent
#...... Start the ssh-agent in the background:
eval "$(ssh-agent -s)"
#...... Add your SSH private key to the ssh-agent:
ssh-add ~/.ssh/id_rsa
#3.1.4. Adding a new SSH key to your GitHub account:
#...... Copy the SSH key to my clipboard:
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
#...... Create new ssh key in GitHub and past the copied ssh key
#3.1.5. Switching remote URLs from HTTPS to SSH
#...... Change the current working directory to my local project
cd ~/source/training.computerscience.linux/
#...... Get the name of the remote repository and verify it is using https url:
git remote -v
#origin	https://github.com/hamidgasmi/training.computerscience.linux.git (fetch)
#origin	https://github.com/hamidgasmi/training.computerscience.linux.git (push)
git remote set-url origin git@github.com:hamidgasmi/training.computerscience.linux.git
#...... Verify that the remote URL has changed:
git remote -v
#origin	git@github.com:hamidgasmi/training.computerscience.linux.git (fetch)
#origin	git@github.com:hamidgasmi/training.computerscience.linux.git (push)


#4 Get started with repositories
#4.1 Clone a remote project: training.computerscience.linux.git
git clone https://github.com/hamidgasmi/training.computerscience.linux.git
#4.2 Pull: Ensure our master branch is up-to-date:
git pull origin master

#5. Branches:
#5.1. Create a branch and switch to it: it is local at this point
git checkout -b getstartedbranch
#5.2. Switch to an existing branch:
git checkout master
#5.3. List remote branches
git branch -r
#5.4. List local branches
git branch -l
#5.5. List All branches:
git branch -a
#5.6. Delete a local branch
git branch -d gitgetstartedbranch

#6. Staging:
#6.1. Check stagged files:
git status
#6.2. Add all file of the directory to the Git staging area:
git add .
#6.2 Add only 1 file:
git add ~/source/training.computerscience.linux/gitgetstarted.sh
#6.3 Remove a file from stagging area:
git reset HEAD gitgetstarted.sh~

#7. Commits
#7.1. Commit staged files:
git commit -m "Get started files for linux repository"
#7.2.
#7.3. Remove a file from a non-pushed commit:

#8. Pushing:
#8.1. Push all committed files
git push origin  getstartedbranch
#8.2. Delete a remote branch from the branch's local git repository:
git push -d origin startedbranc
#8.3. Delete a remote branch from any local git location
git push -d https://github.com/hamidgasmi/training.computerscience.linux.git get 

#9. Merging:
#9.1 Merge a remote branch to a remote master branch

