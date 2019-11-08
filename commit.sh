#!/bin/sh



commit_messgae = "$1"
branch_name = $(git branch)
git add .
git commit -m "$1"
git push -u origin "$branch_name"

