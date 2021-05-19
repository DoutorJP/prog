#!/usr/bin/env bash

echo "alias prog='cd prog && ./prog.sh'" > ~/.bashrc
if [[ ! -d "$DIRECTORY" ]]
then
mkdir ~/Documents/Programming
mkdir ~/Documents/Programming/C
mkdir ~/Documents/Programming/PYTHON
mkdir ~/Documents/Programming/JAVA
mkdir ~/Documents/Programming/C++
mkdir ~/Documents/Programming/SHELL
fi

