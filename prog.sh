#!/bin/zsh
echo "Digite -h para obter ajuda"
if [[ "$1" == "-h" ]]
then
	echo "Sintaxe: ./prog.sh <opcao> <nome do arquivo>"
	echo "============================================"
	echo " OPCAO                     LINGUAGEM"
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
	cd ~/Documentos/Programacao/SHELL	
	vim $2
fi

if [[ "$1" == "-j" ]]
then
	echo "java"	
	cd ~/Documentos/Programacao/JAVA
	vim $2
fi


if [[ "$1" == "-c" ]]
then
	echo "c"	
	cd ~/Documentos/Programacao/C
	vim $2
fi


if [[ "$1" == "-cpp" ]]
then
	echo "cpp"	
	cd ~/Documentos/Programacao/C++
	vim $2
fi


if [[ "$1" == "-p" ]]
then
	echo "python"	
	cd ~/Documentos/Programacao/PYTHON
	vim $2
fi


