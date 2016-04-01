#!/usr/bin/env bash
GLOBIGNORE=".DS_Store"
FILES=$(find .* -maxdepth 0)
current=$(pwd)
cd ~
for dotfile in $FILES
do
	ln -s $current/$dotfile .
done