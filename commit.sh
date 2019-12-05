#!/bin/sh

 ####### commit text & branch name is mandatory ####
 


read -p " CommitText       : "    desc

if [ -z "$desc" ]
then 
      echo "User Should Enter Text to Commit the File"
else
git add .
git commit -m "$desc"

read -p "Enter Branch name    : "    branchname

if [ -z "$branchname" ];
then
echo "User Cannot Commit to Empty Branch"
else
echo "User Entered Branch Name And Branch Name is " $branchname

        git push -u origin "$branchname"
        echo "File Committed Succesfully, Check the GitHub Repo"
		git status
fi






fi

