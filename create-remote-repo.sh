#!/bin/sh

# use the --bare flag to create a remote repo
git clone --bare git-workshop git-workshop-remote

cd git-workshop
echo "Some stuff" >> file1
git add file1
git commit -m "Some Changes"

# push committed changes to remote repo
git push ../git-workshop-remote

# origin is a shortname that is often used automatically
git remote add origin ../git-workshop-remote

echo "Added remote repo." > file2
git add file2
git commit -m "Testing the Remote Repo"

# this is the same as "git push origin"
git push

