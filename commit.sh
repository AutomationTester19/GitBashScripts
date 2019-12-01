#!/bin/sh


read -p " Enter branch name   : " branchname
read -p "commit_messgae:  " desc
git add .
git commit -m "$desc"
git push -u origin "$branch"
echo $"Test Completed"
