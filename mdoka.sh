#!/bin/bash

### TODO: Documentar isso direito :D

funcao(){
    array=( $(seq 1 $1))

    echo ${array[@]}
    echo ${array[0]}

    for i in ${array[@]}
    do
        echo "lala: $i"
    done
}

funcao $1
