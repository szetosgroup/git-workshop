#!/bin/sh

# use the --bare flag to create a remote repo
git clone --bare git-workshop git-workshop-remote

cd git-workshop
echo "Some stuff" >> file1
git add file1
git commit -m "Some changes"

# push committed changes to remote repo
git push ../git-workshop-remote

