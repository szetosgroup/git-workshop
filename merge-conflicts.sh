#!/bin/sh

# make sure both repos are up to date
cd git-workshop


cd ../git-workshop-2
git pull

# make some changes in the second repo
echo "some changes in the second repo" >> conflictfile
git add conflictfile
git commit -m "Changes to conflictfile in Second Repo"
git push

# now make some changes in first repo (without pulling)
cd ../git-workshop
echo "some changes in the first repo" >> conflictfile
git add conflictfile
git commit -m "Change conflictfile in First Repo"

# this will not work
git push

# oops, so we should have pulled first
git pull

# we're on our own now, fix the conflict manually, then commit and push
git mergetool

git commit -m "Merged Changes"
