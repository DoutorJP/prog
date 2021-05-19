#!/usr/bin/env bash

#PROG - um ajudante para programação
#versão 1.2
#por: João Pedro de Moura Vasconcelos
#19/05/2021
echo "alias prog='cd prog && ./prog.sh'" > ~/.bashrc
if [[ ! -d "$DIRECTORY" ]]
then
mkdir ~/Documentos/Programacao
mkdir ~/Documentos/Programacao/C
mkdir ~/Documentos/Programacao/PYTHON
mkdir ~/Documentos/Programacao/JAVA
mkdir ~/Documentos/Programacao/C++
mkdir ~/Documentos/Programacao/SHELL
fi






