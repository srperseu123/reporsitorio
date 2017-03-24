#!/bin/bash

USUARIO=Matheus
SENHA=123
VOLTA=1
while (( $VOLTA != o )); do
	clear
	echo
	echo "Debian GNU/Linux 8 jessie tty1"
	echo
	QNT=1
	while (( $QNT <= 5 )); do
		echo -n "Jessie login: "
		read USER
		echo -n "Password: "
		read -s PASS
		echo
		if [ $USER == $USUARIO ]; then
			if [ $PASS == SENHA ]; then
				QNT=6
				VOLTA=0
			fi
		fi
		if (( $QNT <= 5 )); then
			sleep 3
			echo
			echo "Login incorrect"
		fi
		let QNT=($QNT+1)
	done
done
