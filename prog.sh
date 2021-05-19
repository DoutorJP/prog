#!/usr/bin/env bash

#PROG - A simple helper to programming
#version ENGLISH - 1.0
#by: João Pedro de Moura Vasconcelos
#contact: email: jpmv14@gmail.com
#originally created in march/2021
figlet "PROG"
echo "Welcome to prog, a simple helper to programming"
echo "Type prog -h for help"
if [[ "$1" == "-h" ]]
then
	echo "Sintax: prog <option> <name of the file>"
	echo "============================================"
	echo " OPTION                     LANGUAGE"
	echo "============================================"
	echo " -s			SHELL SCRIPT     "
	echo " -j			JAVA		 "
	echo " -c 			C		 "
	echo " -cpp			C++		 "
	echo "-p 			PYTHON		 "
fi
if [[ "$1" == "-s" ]]
then
	echo "shell"	
	cd ~/Documents/Programming/SHELL	
	vim $2
fi

if [[ "$1" == "-j" ]]
then
	echo "java"	
	cd ~/Documentos/Programming/JAVA
	vim $2
fi


if [[ "$1" == "-c" ]]
then
	echo "c"	
	cd ~/Documentos/Programming/C
	vim $2
fi


if [[ "$1" == "-cpp" ]]
then
	echo "cpp"	
	cd ~/Documentos/Programming/C++
	vim $2
fi


if [[ "$1" == "-p" ]]
then
	echo "python"	
	cd ~/Documentos/Programming/PYTHON
	vim $2
fi


