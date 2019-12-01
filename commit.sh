#!/bin/sh



read -p "commit_messgae:  " desc
git add .
git commit -m "$desc"
echo $"Test Completed"
