#!/bin/sh


read -p " commit_messgae       : "    desc

git add .
git commit -m "$desc"

read -p "Enter branch name    : "    branchname

if [ -z "$branchname" ];
then
echo "User Cannot Commit to empty branch"
else
echo "User Entered Branch Name And Branch Name is " $branchname
  git push -u origin "$branchname"
        echo "File Committed Succesfully, Check the GitHub Repo"
		git status
fi





