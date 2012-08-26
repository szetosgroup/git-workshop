#!/bin/sh

# clone the remote repo
mkdir git-workshop-2
cd git-workshop-2
git clone ../git-workshop-remote ./

# make some changes
echo "Some changes" >> file1
git add file1
git commit -m "I made some changes."

# origin is already set from the cloning step
git push

# now we go pull the changes from the remote repo in our original repo
cd ../git-workshop
git pull ../git-workshop-remote

# this is annoying, so we tell git that the master branch should track
# the origin/master branch
git branch --set-upstream master origin/master

# note that for the second repo this was automatically configured when we cloned
