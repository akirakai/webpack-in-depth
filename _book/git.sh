#!/bin/bash
#push to current version
#version=`git status |head -1 |cut -d ' ' -f 3`
version=`git symbolic-ref --short HEAD`
git pull origin $version
git add .
git commit -m "$1"
git push origin $version