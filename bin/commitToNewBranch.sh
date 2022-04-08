#!/usr/bin/env bash

read -p 'New Branch Name:' newBranch

git switch -c $newBranch

git add .

git commit -m "Add local changes to new git branch"

git switch -

git clean -f
