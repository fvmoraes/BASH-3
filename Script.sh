#!/bin/bash

# Interação com o usuário
echo "ATENÇÂO !!!!"
echo ""
echo "ESTE SCRIPT IRÁ APAGAR OS DIRETóRIOS ATUAIS QUE POSSUIREM A MESMA NOMENCLATURA DE SEUS ATUAIS."
echo ""
echo "Pressione ENTER para continuar ou CTRL + C para cancelar."
read	# Aguarda a decisão do usuário.
# Fim da interação com o usuário

for((i=1;i<=$2;i++))	#Inicio do laço FOR
do	

if [ -d "$1 $i" ]	# Teste da existencia do diretório.
then
echo "Apagando $1 $i"	# MSg de verificação apagar após produção.
rm -Rf "$1 $i"	# Apagar diretório caso exista
fi

mkdir "$1 $i"	#Criação de diretório.


done	# Fim do laço FOR

# Interação com o usuário
echo "Segue abaixo os diretórios criados"
echo ""
# Fim da interação com o usuário

ls $1*	
