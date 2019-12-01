#!/bin/sh

if [ -n "$branchname" ];
then
echo "User Cannot Commit to $branchname as it is empty"
else 
read -p " Enter branch name    : " branchname
read -p " commit_messgae       : " desc
echo "User Entered Branch Name And Branch Name is " $branchname
fi

git add .
git commit -m "$desc"
git push -u origin "$branchname"
echo "Commited File SuccessFully, Check the Git Hub Repo"