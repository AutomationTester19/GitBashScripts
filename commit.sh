#!/bin/sh


read -p " commit_messgae       : "    desc

git add .
git commit -m "$desc"

read -p "Enter branch name    : "    branchname

if [ -z "$branchname" ];
then
echo "User Cannot Commit to $branchname as it is empty"
else
str = git $branchname 
echo "User Entered Branch Name And Branch Name is " $branchname
fi

git push -u origin "$branchname"
if [ -z "$branchname" && str==$branchname]
then
        echo "User Cannot Commit the file to empty branch"
else 
        echo "File Committed Succesfully, Check the GitHub Repo"
fi

git status