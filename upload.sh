#!/bin/bash

git status
git add .
git commit -m "add"
git push origin master
mkdocs gh-deploy
