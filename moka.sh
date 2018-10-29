#!/bin/bash

### TODO: Documentar isso direito :D

funcao(){
    array=( $(seq 1 $1))

    # echo ${array[@]}
    # echo ${array[0]}

    tamanhoDoArray=${#array[@]}

    for i in ${array[@]}
    do
        #echo "Número da iteração ${i}"
        echo "Tamanho do Array: ${tamanhoDoArray}"
        echo "Antes do unset: ${array[@]}"

        ### Recebe o primeiro elemento do Array atual
        topoDoArray=${array[$i-1]}

        ### O unset remove o item da posição correta do array, mas
        ### como efeito colateral, o índice do array também é
        ### destruído, ...
        unset array[$i-1]

        ### ... por isso é preciso recriar o índice, embora vazio,
        ### usando o set
        # array[$i-1]="$topoDoArray" 
        echo "Topo do Array: $topoDoArray"

        # echo "Depois do unset: ${array[@]}"
        array2=(${array[@]})
        array[$tamanhoDoArray]=$topoDoArray
        echo -e "Depois da reatribuição do array: ${array2[@]} \n"
    done
}

funcao $1
