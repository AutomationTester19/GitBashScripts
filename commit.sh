#!/bin/sh



commit_messgae = "$1"
branch_name = $(git branch)
git add .
git init
git commit -m "$1"

