#!/usr/bin/sh
# 4. The Basics
# initiall project with git
git init
code README.md

git add 
git commit README.md -m "first commit"

ls -al
# for get rid of git! 
rm -rf .git/ 

git init .


git log 

git log --oneline
git log --graph
git log --graph --decorate --all


git show

git ls-files

git reset HEAD FILNENAME# head is special pointer 
# by this command change in FILNENAME still will be there
# in order to reset those chech use this:
git checkout -- FILNENAME

git config --global alias.hist "log --oneline --graph --decorate --all"
# now follosing command is valid
git hist

git config --global --list

# rename files
git mv example.txt demo.txt
git rm demo.txt

# in outside of git 
mv LICENCE.md LICENCE.txt
# u need use this 
git add -u # u stand for update

git add -A # will cover all type of modification 

# if u change ouside of git it is better to use git add -u 
rm myfile.txt

git add -u

# use .gitignore bro!
# 5. Advanced Beyond the Basics

git diff 144746d 01fbf80
git diff 144746d HEAD 

# to show last change with HEAD 
git diff 

# branch is just timeline of commit!
git branch # list the bracnches
git checkout -b updates
# do some change and commit them
git diff updates main 

# go back to main branch
git checkout main 
# merge changes to main branch
git merge updates
# now delete updates branch 
git branch -d updates

# tag 
git tag mytag # chnge 
git tag --list

# for deleting tag
git tag -d mytag

# annotated tag
git tag -a v1.0 -m "Realese 1.0"
git show v1.0

git stash 
git stash list

git stash pop 

git reset 392fdbd --soft

# 6. Welcome to GitHub
# Linking to our GitHub Repository 
git remote add origin [url]
git remote -v 
# push with tags
git push -u origin main --tags

git remote show  origin

# 8. GitHub Repository section
# 9. GitHub Repository Branches
git checkout -b example
git branch 
git status 
git commit -am "edit in example bracnch"
git status 
git push -u origin example

git branch -a
git fetch -p 

git branch -a

# create branch on github and use it in local
git checkout update-readme 
git branch 
git status 
git commit -am "more edit"
git push 

git checkout main

git merge update-readme
# delete useless branch localy
git branch -d update-readme
# delete that branch on remote
git push origin :update-readme 

# Pull with Rebase
git pull --rebase

# GitHub Tags and Releases
git tag -a v0.1-alpha -m "Release 0.1 (Alpha)" c1bcb0d
git push origin tagname
# for push all tags: 
git push origin --tags

git push origin :tagname
# change tag's commit id: 
git tag -f v0.1-alpha 71f7a88
git push --force origin v0.1-alphas     

# Comparing Differences
#  Social Coding