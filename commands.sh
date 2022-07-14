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




