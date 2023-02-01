# Script Libre Sistemas Informaticos

Este repositorio recoge nuestro Script Libre para la asignatura Sistemas Informáticos.

Este Script debe ser un script escrito en lenguaje Bash, y la idea es totalmente libre

Este trabajo está realizado por:

- [Gema Marquinez](https://github.com/gmarquinez)
- [José Luis De Jesús/Chelu](https://github.com/JLDJR2481)

La idea de este script es muy sencilla. Al ejecutar el archivo, solicita al usuario un input en formato numérico. Este input solo acepta datos con formato numérico, teniendo a su disposición un control de inputs que impide que el script de conversiones se ejecute. Si el usuario inserta otro tipo de dato, se le solicitará que vuelva a introducir otro input.

Una vez verificado que el input es numérico, se realizan copias del mismo para empezar las conversiones:

1. **Binario**
Para este conversor, se crea un array vacío con nombre binario para, al final, realizar un output del número en binario. Para este conversor, se usa un bucle while que verifique si el número puede ser dividido (para las conversiones, se divide hasta que el número en concreto resulte en 0). Para el binario, declaramos una variable resto que vaya realizando el módulo entre el número y 2 ( x % 2). Esta variable se añade al array y, tras ello, reducimos el número dividiendolo entre 2.

Una vez que no se cumpla la condición del bucle, se dará un output del array pero a la inversa con | rev. Es decir, se otorga el array al orden inverso, que es como se calcula el número binario.

2. **Octal**
Una vez terminado el proceso de binario, se coge la copia del input para convertir el número en octal. Para esta conversión, declaramos otro array octal que está vacía y nos permitirá añadir, con el bucle while, los restos que irá aportando resto_octal. El módulo es entre 8 ( x % 8 ) y se divide el número entre 8.

Una vez que la condición no se cumpla, ( while [ $numero -le 1 ] ), se aportará el número octal mediante el array usando de nuevo el | rev.

3. **Hexadecimal**
Para esta conversión, hay un poco más de trabajo, ya que en formato hexadecimal tenemos las letras A,B,C,D,E y F, que representan al 10, 11, 12, 13, 14 y 15 respectivamente. Para ello, creamos un diccionario Hexadecimal, el cual sirve para convertir el resto en el carácter correspondiente.

Para el proceso, es el mismo que el resto: Creamos un array, creamos un bucle while, calculamos el módulo (esta vez, es x % 16). Pero aquí cambia un poco. Antes de insertar el valor de la variable resto_hex, lo pasamos por el diccionario Hexadecimal para convertirlo, en caso de números superiores o igual a 10. Una vez convertido, se añade al array, dividimos el número entre 16 y así, hasta que no cumpla la condición.

Finalmente, igual que las demás, hace un output inverso del array para representar el número en formato hexadecimal
