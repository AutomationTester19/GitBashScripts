#!/bin/sh

read -p " Enter branch name    : " branchname
read -p " commit_messgae       : " desc

if [ -n "$branchname" ];
then
echo "User Cannot Commit to $branchname as it is empty"
else 
echo "User Entered Branch Name And Branch Name is " $branchname
fi

git add .
git commit -m "$desc"
git push -u origin "$branchname"
echo "Commited File SuccessFully, Check the Git Hub Repo"