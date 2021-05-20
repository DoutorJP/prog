#!/usr/bin/env bash

#PROG - um ajudante para programação
#versão 1.2
#por: João Pedro de Moura Vasconcelos
#19/05/2021

echo " ____  ____   ___   ____
|  _ \|  _ \ / _ \ / ___|
| |_) | |_) | | | | |  _
|  __/|  _ <| |_| | |_| |
|_|   |_| \_\\___/ \____|
"

echo "Bem-vindo ao prog, o ajudande da programação"
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

case "${1}" in
  "-s")
	echo "shell"	
	cd ~/Documentos/Programacao/SHELL	
	vim $2 
  ;;
  "-j")
	echo "java"	
	cd ~/Documentos/Programacao/JAVA
	vim $2
  ;;
  "-c")
	echo "c"	
	cd ~/Documentos/Programacao/C
	vim $2
  ;;
  "-cpp")
	echo "cpp"	
	cd ~/Documentos/Programacao/C
	vim $2
  ;;
  "-cpp")
	echo "python"	
	cd ~/Documentos/Programacao/PYTHON
	vim $2
  ;;
esac
