#!/usr/bin/env bash

#PROG - um ajudante para programação
#versão 1.3
#por: João Pedro de Moura Vasconcelos
#19/05/2021
figlet "PROG"
echo "Bem-vindo ao prog, o ajudande da programação"
echo "Digite -h para obter ajuda"

if [[ "$1" == "-h" ]]
then
		echo "Sintaxe: ./prog.sh <opcao> <editor> <nome do arquivo>"
		echo "============================================"
		echo " OPCAO         EDITOR            LINGUAGEM"
		echo "============================================"
		echo " -v              vim                        " 
		echo " -n              nano                       "
		echo " -s			             SHELL SCRIPT     "
		echo " -j			             JAVA		 "
		echo " -c 			             C		 "
		echo " -cpp			             C++		 "
		echo "-p 			             PYTHON		 "
fi
if [[ "$2" == "-v" ]]
then

		if [[ "$1" == "-s" ]]
		then
				echo "shell"	
				cd ~/Documentos/Programacao/SHELL	
				vim $3
		fi

		if [[ "$1" == "-j" ]]
		then
				echo "java"	
				cd ~/Documentos/Programacao/JAVA
				vim $3
		fi


		if [[ "$1" == "-c" ]]
		then
				echo "c"	
				cd ~/Documentos/Programacao/C
				vim $3
		fi


		if [[ "$1" == "-cpp" ]]
		then
				echo "cpp"	
				cd ~/Documentos/Programacao/C++
				vim $3
		fi


		if [[ "$1" == "-p" ]]
		then
				echo "python"	
				cd ~/Documentos/Programacao/PYTHON
				vim $3
		fi
fi

if [[ $2 == "-n"  ]] 
then

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
				nano $3
		fi

		if [[ "$1" == "-j" ]]
		then
				echo "java"	
				cd ~/Documentos/Programacao/JAVA
				nano $3
		fi


		if [[ "$1" == "-c" ]]
		then
				echo "c"	
				cd ~/Documentos/Programacao/C
				nano $3
		fi


		if [[ "$1" == "-cpp" ]]
		then
				echo "cpp"	
				cd ~/Documentos/Programacao/C++
				nano $3
		fi


		if [[ "$1" == "-p" ]]
		then
				echo "python"	
				cd ~/Documentos/Programacao/PYTHON
				nano $3
		fi
fi


