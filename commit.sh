#!/bin/sh


read -p " commit_messgae       : " desc

git add .
git commit -m "$desc"
if [ -n "$branchname" ];
then
echo "User Cannot Commit to $branchname as it is empty"
else 
read -p "Enter branch name    : " branchname
echo "User Entered Branch Name And Branch Name is " $branchname
git push -u origin "$branchname"

fi
echo "Commited File SuccessFully, Check the GitHub Repo"

