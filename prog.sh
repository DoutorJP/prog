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
	echo " -p 			PYTHON		 "
	exit 0
fi

case "${1}" in
  "")
     # Sai imediatamente se o usuário não passar nenhuma opção
     # O numero 1 na frente é porque você esperava que o usuário passasse uma opção
     # 1 significa "Erro genérico"
     exit 1
  ;;
  "-s")
	echo "shell"	
	cd ~/Documentos/Programacao/SHELL	
  ;;
  "-j")
	echo "java"	
	cd ~/Documentos/Programacao/JAVA
  ;;
  "-c")
	echo "c"	
	cd ~/Documentos/Programacao/C
  ;;
  "-cpp")
	echo "cpp"	
	cd ~/Documentos/Programacao/C
  ;;
  "-cpp")
	echo "python"	
	cd ~/Documentos/Programacao/PYTHON
  ;;
  *)
     echo "Erro: Opção inválida"
     exit 126 # Código de erro padrão para opção que não pode ser executada
  ;;
esac

if [[ "${2}" == "" ]]
then
	echo "Erro: Você precisa passar o nome do arquivo:"
	echo "Sintaxe: ./prog.sh ${1} <nome do arquivo>"
	exit 1
fi

vim $2
