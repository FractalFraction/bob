#!/bin/bash
git init
git add *
git commit -m "Initial commit"
git branch -M master
git remote add origin https://github.com/FractalFraction/${PWD##*/}.git
git push -u origin master