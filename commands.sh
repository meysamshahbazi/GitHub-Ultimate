#!/usr/bin/sh
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



