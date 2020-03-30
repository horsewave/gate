#!/bin/bash


#### ---------------------1: to create git-----------------------------  
  git init

####-----------------------2: configure your git--------------------

#### acount
#### 3 .1: Build your own .gitignore, and this
#### .gitignore must add into git;
 # add .gitignore

#### 3.2: add other files to stage area
git add .

#### 3.3: submitte the  commit 
COMMIT_TAG=" First version for GATE simulation   "
git commit -m "$COMMIT_TAG"


#### alias
#git config --global alias.st status
#git config --global alias.co checkout
#git config --global alias.ci commit
##git config --global alias.br branch

#git config --global alias.unstage 'reset HEAD'

##git config --global alias.last 'log -1'

#git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

####-----------------------3: push it to the github--------------------
# git remote add origin https://github.com/horsewave/root_macros.git

## use the following to spare the enter of username and password
# git config credential.helper store
# git push https://github.com/horsewave/root_macros.git

# # git remote add origin git@github.com:horsewave/root_macros.git
# git push -u origin master

# git push -u origin temp_patient_81
# git config --global http.proxy 'socks5://127.0.0.1:1080'
# git remote rm origin
# git push origin --delete temp_patient_81


####-----------------------4: replace the master with the new branch----#----------------
##git checkout better_branch
#git merge --strategy=ours master    # keep the content of this branch, but record a merge
#git checkout master
#git merge temp_sphe_310             # fast-forward master up to the merge

git status
