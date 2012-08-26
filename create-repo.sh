#!/bin/sh

# create a local repo
mkdir git-workshop
cd git-workshop
git init

echo "This is a line" >> file1
git status
git add file1
git status
git commit -m "Add Some File"
git log

echo "This is another line" >> file1
git diff

# commit -a commits all modified files
git commit -a -m "Some New Changes"

# removing files
touch garbage

# keep local copy
git add garbage
git rm --cached garbage
ls

# delete local copy
git add garbage
git rm -f garbage
ls

# moving files
git mv file1 file2
git status
git mv file2 file1
git status
