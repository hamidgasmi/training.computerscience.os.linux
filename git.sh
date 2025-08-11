#1. Installation:
#1.1. Upgrade:
sudo apt-get update
sudo apt-get upgrade
#1.2. First Installation:
sudo apt-get install git -y
#1.3. Configure Git client
git config --global user.name "Hamid Gasmi"
git config --global user.email "hg@hg.com"
#1.4. Install GCM (git-credential-manager): 
#.... https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md#linux
#.... Download Debian package: https://github.com/git-ecosystem/git-credential-manager/releases
sudo dpkg -i <path-to-package>
#1.5. Configure GCM
git-credential-manager configure

#2. Authenticate to GitHub
#2.1. HTTPS
#.... Create a token in github
#.... Clone a repo locally and enter credentials
#2.2. SSH
#2.2.1. Checking for existing SSH keys:
#...... It should one of the following: id_rsa.pub, id_ecdsa.pub, id_ed25519.pub
ls -al ~/.ssh
#2.2.2. Generating a new SSH key and adding it to the ssh-agent:
ssh-keygen -t rsa -b 4096 -C "mamid1706@hotmail.fr"
# > Enter a file in which to save the key (/home/you/.ssh/id_rsa): [Press enter]
#......This accepts the default file location.
# > Enter passphrase (empty for no passphrase): [Type a secure passphrase]
# > Enter same passphrase again: [Type passphrase again]
#2.2.3. Adding my ssh key to the ssh-agent
#...... Start the ssh-agent in the background:
eval "$(ssh-agent -s)"
#...... Add your SSH private key to the ssh-agent:
ssh-add ~/.ssh/id_rsa
#2.2.4. Adding a new SSH key to your GitHub account:
#...... Copy the SSH key to my clipboard:
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
#...... Create new ssh key in GitHub and past the copied ssh key
#2.2.5. Switching remote URLs from HTTPS to SSH
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

#3. Get started with repositories
#3.1. Clone a remote project: training.computerscience.linux.git
git clone https://github.com/hamidgasmi/training.computerscience.linux.git
#3.2. Fetch: Update local git with remote information: e.g., remote branches list (it does not include code)
git fetch
#3.3. Pull: Ensure our master branch is up-to-date:
git pull origin master
#3.4. Renaming default branch
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
#3.5. Add locally hosted code to GitHub
#.... https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github
#.... Initialize the Git repository
git init -b main
#.... Add and Commit the files in your new local repository.
git add .
git commit -m "First commit"
#.... Create a new repository on GitHub. 
#.... Do NOT initialize the new repository with README, license, or gitignore files.
#.... Copy the remote repository URL: <REMOTE-URL>
#.... Add the URL for the remote repository where your local repository will be pushed
git remote add origin <REMOTE-URL>
#.... Verify that we set the remote URL correctly:
git remote -v
#.... Push the changes in your local repository to GitHub:
git push origin main

#5. Branches:
#5.1. Create a branch and switch to it: it is local at this point
git checkout -b getstartedbranch
#5.2. Switch to branches:
# ... Switch to master:
git checkout master
# ... Switch to an existing remote branch: 
# ... track flag let the local branch to track the remote branch from origin
# ... If track is omitted then the local branch will be detached from the remote branch
git fetch
git checkout --track origin/remotebranch
#5.3. List remote branches
git branch -r
#5.4. List local branches
git branch -l
#5.5. List All branches:
git branch -a
#5.6. Delete a local branch
git branch -d gitgetstartedbranch

#6. Local changes:
#6.1. Undo local changed (they're not stagged yet): Discarding local changes (permanently) to a file:
git checkout -- <file>
#6.2. Discard all local changes to all files permanently: 
git reset --hard
#6.3. Discard all local changes, but save them for possible re-use later:
git stash
git stash save  #enables including temporary commit message, which will help you identify changes, among with other options
git stash list  #lists all previously stashed commits (yes, there can be more) that were not poped
git stash pop   #redoes previously stashed changes and removes them from stashed list
git stash apply #redoes previously stashed changes, but keeps them on stashed list

#7. Staging:
#7.1. Check stagged files:
git status
#7.2. Add all file of the directory to the Git staging area:
git add .
#7.2 Add only 1 file:
git add ~/source/training.computerscience.linux/gitgetstarted.sh
#7.3 Remove a file from stagging area:
git reset HEAD gitgetstarted.sh~

#8. Commits
#8.1. Commit staged files:
git commit -m "Get started files for linux repository"
#8.2. Commit staged files with Subject and Body (empty line between subject and body)
git commit -m "Add subject" -m " " -m "- Add line 1 for body "- Add line 2 for body"


#8.3. Check comitted items

#8.3. Remove a file from a non-pushed commit:
#..... Solution 1: Undo commit and keep all files staged
#..... reset: it's most often used to make a few changes to the latest commit and/or fix its commit message 
#............ it leaves working tree as it was before.
#..... soft: it doesn't touch the index file or the working tree at all 
#........... it resets the head to the previous commit
git reset --soft HEAD~
#..... Solution 2: Undo commit and unstage all files 
git reset HEAD~
#................ mixed will reset the index but not the working tree:
#................ The changed files are preserved but not marked for commit 
#................ It reports what has not been updated.
git reset --mixed HEAD~
#8.4. Fix merging conflits:
cd repository-folder
#.... list all files which has marker special marker '<<<<<<<'
grep -lr '<<<<<<<' .
#.... If solution is to accept local/our version:
git checkout --ours ./FILE
git add ./FILE
git commit -m "..."
#.... If solution is to accept remote/other-branch version:
git checkout --theirs PATH/FILE

#9. Pushing:
#9.1. Push all committed files into a tracked remote branch
git push origin getstartedbranch
#9.2. Push all committed files into a detached remote branch
#... git checkout origin/remotebranch # Local branch is created without track flag
git push origin HEAD:remotebranch
#9.3. Delete a remote branch from the branch's local git repository:
git push -d origin getstartedbranch
#9.4. Delete a remote branch from any local git location
git push -d https://github.com/hamidgasmi/training.computerscience.linux.git get 
#9.5. Delete a remote branch
git push origin --delete gitgetstartedbranch

#10. Merging:
#10.1 Merge a remote branch to a remote master branch
git checkout master
git pull origin master
git merge getstartedbranch
git push origin master
git push origin --delete gitgetstartedbranch


# 99. Others
