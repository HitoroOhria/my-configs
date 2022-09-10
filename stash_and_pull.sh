#!/bin/sh

git stash

git pull origin --rebase main

git stash pop stash@{0}