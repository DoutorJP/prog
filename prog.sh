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
	echo " -l 			Lua		 "
	exit 0
fi

# Variáveis de ambiente (criadas no shell que executa o prog):
#   export PROJETOS="/pasta/que/quero" && ./prog [...]
# ou
#   PROJETOS="/pasta/que/quero" ./prog [...]
# Podem ser acessadas com $VARIAVEL, assim como variáveis criadas dentro do shell.
# Se estiver vazia, usar um padrão
if [[ "${PROJETOS}" == "" ]]
then
  PROJETOS="$(xdg-user-dir DOCUMENTS)/Programacao"
else
  # Obter o caminho completo da pasta de projetos passada pelo usuário:
  PROJETOS="$(realpath -- "$PROJETOS")"
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
	mkdir -p "$PROJETOS/SHELL"
	cd "$PROJETOS/SHELL"	
  ;;
  "-j")
	echo "java"	
	mkdir -p "$PROJETOS/JAVA"
	cd "$PROJETOS/JAVA"
  ;;
  "-c")
	echo "c"	
	mkdir -p "$PROJETOS/C"
	cd "$PROJETOS/C"
  ;;
  "-cpp")
	echo "cpp"	
	mkdir -p "$PROJETOS/CPP"
	cd "$PROJETOS/CPP"
  ;;
  "-p")
	echo "python"	
	mkdir -p "$PROJETOS/PYTHON"
	cd "$PROJETOS/PYTHON"
  ;;
  "-l")
	echo "lua"	
	mkdir -p "$PROJETOS/LUA"
	cd "$PROJETOS/LUA"
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

if [[ "${EDITOR}" == "" ]]
then
	EDITOR=vim
fi

${EDITOR} "$2"
