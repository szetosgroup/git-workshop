#!/bin/sh

# show all branches
git branch -a

# create a local branch
git branch new-feature-branch
git checkout new-feature-branch

echo "Some new code" >> file1
git add file1
git commit -m "New Feature Working"

# merge this branch into master
git checkout master

# check the file we just changed 
cat file1

# merge changes from our new feature branche into master
git merge new-feature-branch

# delete the feature branch
git branch -d new-feature-branch 
