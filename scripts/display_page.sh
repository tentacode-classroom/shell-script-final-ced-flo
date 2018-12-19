#!/bin/bash

clear
CUR_DIR=`dirname $0`

function NextPage()
{
	read -p "Votre choix : " CHOICE
	$0 ${TAB_PAGE[$CHOICE-1]}
}

cat $CUR_DIR/../livre/page0$1.txt

if [ $1 -eq 1 ]
then
	TAB_PAGE=(2 3 4)
elif [ $1 -eq 3 ]
then
	TAB_PAGE=(5 6 4)
elif [ $1 -eq 6 ]
then
	TAB_PAGE=(7 8 4)
else
	exit
fi

NextPage
