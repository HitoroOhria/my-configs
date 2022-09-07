#!/bin/sh

git stash

git pull origin --rebase main

git stash drop stash@{0}