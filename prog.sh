#!/usr/bin/env bash

#PROG - um ajudante para programação
#versão 1.4
#por: João Pedro de Moura Vasconcelos
#25/05/2021

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
	echo " -s			    SHELL SCRIPT     "
	echo " -j			    JAVA		 "
	echo " -c 			    C		 "
	echo " -cpp			    C++		 "
	echo " -p 			    PYTHON		 "
	echo " -l 			    LUA		 "
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
    LINGUAGEM="shell"
  ;;
  "-j")
    LINGUAGEM="java"  
  ;;
  "-c")
    LINGUAGEM="c"  
  ;;
  "-cpp")
    LINGUAGEM="cpp"  
  ;;
  "-p")
    LINGUAGEM="python"  
  ;;
  "-l")
    LINGUAGEM="lua"  
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

echo "Entrando no ambiente da linguagem $LINGUAGEM..."
# Entrar na pasta da linguagem - ${VARIAVEL^^} deixa a variável em maiúsculas
PASTA="$PROJETOS/${LINGUAGEM^^}"
# Verificar se a criação de pasta foi bem-sucedida com um if, e só fazer `cd` se tiver sido
if mkdir -p "$PASTA"
then
  cd "$PASTA"
else
  echo "Erro: não foi possível criar a pasta $PASTA."
  exit 1
fi



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

<<<<<<< HEAD
if [[ "${EDITOR}" == nano"" ]]
then
		EDITOR=nano
fi

${EDITOR} $2
=======
${EDITOR} "$2"
>>>>>>> a90d66867e4a293141cfc841c413bb8a57a8f3ea
