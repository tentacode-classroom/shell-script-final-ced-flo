#!/bin/bash

clear
CUR_DIR=`dirname $0`

function NextPage()
{
	read -p "Votre choix : " CHOICE
	$0 ${TAB_PAGE[$CHOICE-1]}
}

cat $CUR_DIR/../livre/page$1.txt

if [ $1 -eq 1 ]
then
	TAB_PAGE=(02 03 04 42)
elif [ $1 -eq 3 ]
then
	TAB_PAGE=(05 06 04)
elif [ $1 -eq 6 ]
then
	TAB_PAGE=(07 08 04)
else
	exit
fi

NextPage
