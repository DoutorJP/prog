#!/usr/bin/env bash

#PROG - um ajudante para programação
#versão 1.4
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
	echo " -l 			LUA		 "
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
	mkdir -p "$(xdg-user-dir DOCUMENTS)/Programacao/SHELL"
	cd "$(xdg-user-dir DOCUMENTS)/Programacao/SHELL"	
  ;;
  "-j")
	echo "java"	
	mkdir -p "$(xdg-user-dir DOCUMENTS)/Programacao/JAVA"
	cd "$(xdg-user-dir DOCUMENTS)/Programacao/JAVA"
  ;;
  "-c")
	echo "c"	
	mkdir -p "$(xdg-user-dir DOCUMENTS)/Programacao/C"
	cd "$(xdg-user-dir DOCUMENTS)/Programacao/C"
  ;;
  "-cpp")
	echo "cpp"	
	mkdir -p "$(xdg-user-dir DOCUMENTS)/Programacao/CPP"
	cd "$(xdg-user-dir DOCUMENTS)/Programacao/CPP"
  ;;
  "-p")
	echo "python"	
	mkdir -p "$(xdg-user-dir DOCUMENTS)/Programacao/PYTHON"
	cd "$(xdg-user-dir DOCUMENTS)/Programacao/PYTHON"
  ;;
  "-l")
	echo "lua"	
	mkdir -p "$(xdg-user-dir DOCUMENTS)/Programacao/LUA"
	cd "$(xdg-user-dir DOCUMENTS)/Programacao/LUA"
  ;;
"-js")
		echo "javascript"
		mkdir -p "$(xdg-user-dir DOCUMENTS)/Programacao/JAVASCRIPT"
		cd "$(xdg-user-dir DOCUMENTS)/Programacao/JAVASCRIPT"
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

if [[ "${EDITOR}" == vim"" ]]
then
	EDITOR=vim
fi

if [[ "${EDITOR}" == nano"" ]]
then
		EDITOR=nano
fi

${EDITOR} $2
