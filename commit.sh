#!/bin/sh



commit_messgae = "$1"
branch_name = $(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
git add .
git commit -m "$1"
git push -u origin "$branch_name"

