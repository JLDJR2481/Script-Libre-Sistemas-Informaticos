#!/bin/bash

read -p "Introduce aquí tu número decimal para convertirlo en un binario y en octal: " numero
validacion=^[0-9]+$


while [ $numero ]
do
	if [[ $numero =~ $validacion ]];
	then
		echo " "

		echo "Tu numero introducido es $numero"
		echo " "
		echo "Calculando binario"
		sleep 4

		let copia_num=$numero

		binario=()
		while [ $numero -ge 1 ]
		do
			let resto_bin=$(($numero % 2))
			binario+=$resto_bin
			numero=$(($numero / 2))

		done

		echo " "
		echo "El numero $copia_num en binario es: "
		echo "${binario[@]}" | rev

		echo "Binario calculado, espere mientras calculamos el numero octal de $copia_num"
		sleep 4


		let copia_num_dos=$copia_num
		octal=()

		while [ $copia_num -ge 1 ]
		do
			let resto_octal=$(($copia_num % 8))
			octal+=$resto_octal
			copia_num=$(($copia_num / 8))

		done

		echo " "
		echo "El numero $copia_num_dos en octal es: "
		echo "${octal[@]}" | rev

		echo "Octal calculado, espere mientras calculamos el numero hexadecimal de $copia_num_dos"
		sleep 6

		num_original=$copia_num_dos
		hexadecimal=()

		declare -A Hexadecimal
		Hexadecimal[0]=0
		Hexadecimal[1]=1
		Hexadecimal[2]=2
		Hexadecimal[3]=3
		Hexadecimal[4]=4
		Hexadecimal[5]=5
		Hexadecimal[6]=6
		Hexadecimal[7]=7
		Hexadecimal[8]=8
		Hexadecimal[9]=9
		Hexadecimal[10]=A
		Hexadecimal[11]=B
		Hexadecimal[12]=C
		Hexadecimal[13]=D
		Hexadecimal[14]=E
		Hexadecimal[15]=F

		while [ $copia_num_dos -ge 1 ]
		do
			let resto_hex=$(($copia_num_dos % 16))
			hexadecimal+=${Hexadecimal[$resto_hex]}
			copia_num_dos=$(($copia_num_dos / 16))
		done

		echo " "
		echo "El numero $num_original en hexadecimal es: "
		echo "${hexadecimal[@]}" | rev

		echo "Conversiones realizadas! :D"

		exit

	else
		read -p "Dato introducido con formato erróneo. Asegurate de introducir en formato numérico: " numero
	fi

done