#!/bin/bash

clear
CUR_DIR=`dirname $0`

if [ -z $1 ] || [ $1 -eq 1 ]
then
	cat $CUR_DIR/livre/page01.txt
fi
