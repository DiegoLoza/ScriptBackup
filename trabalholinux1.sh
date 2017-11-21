#!/bin/bash

    teste=$1

    num=$( cat "$teste" | wc -l )

    if [[ $num -lt 100 ]];
    then

       mkdir pequena
       mv $teste /home/robot/trabalholinux1/pequena

    elif [[ $num -ge 100 ]] && [[ $num -lt 500 ]]
    then

       mkdir media
       mv $teste /home/robot/trabalholinux1/media

    else

       mkdir grande
       mv $teste /home/robot/trabalholinux1/grande
    fi

    echo -e "\n arquivo $teste tem $num linhas e foi jogado para a pasta correta!\n"
