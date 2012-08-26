#!/bin/sh
# open a web browser
# go to https://github.com
# log in with your github username (create an account if you don't have one)
# go to https://github.com/dimsumlabs/git-workshop
# click on the "Fork" button on the upper right
# click "Fork to your_username"

git clone https://github.com/your_username/git-workshop git-workshop-fork
cd git-workshop-fork

# create a file and write something into it
# stage it, commit and push
# please modify the following lines so not all participants submit the same changes
git branch my-feature
git checkout my-feature
mkdir junk-directory
cd junk-directory
echo "My own cool stuff you should pull" >> dimsumlabs_ftw
git add ./
git commit -m "My awesome feature is working"
git push origin my-feature

# now go to https://github.com/your_username/git-workshop
# click on the "Pull Request" button just below the top bar (not the 
#   "Pull Requests" tab)
# choose your new feature branch as "head branch"
# insert Pull Request Title and some explanation below.
# click "Send pull request"
# Everybody can now discuss your new feature under the opened pull request
# and maintainers of the dimsumlabs github organization can accept the pull
# request if they think it's good

# Go back to your terminal make some more changes on your feature branch,
# commit and push. Then go back to your browser and refresh the pull request
# page and observe.
