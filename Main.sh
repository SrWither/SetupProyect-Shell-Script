#!/bin/sh

. Lenguajes.sh

Main() {

    while true; do
        read -p "Seleccione el tipo de proyecto: (html/python/javascript) " int1
        case $int1 in
            python ) python;;
            javascript ) js;;
            html ) html;;
            * ) echo "Seleccione una opción valida";;
        esac
    done
}


Main2() {

    while true; do
        read -p "¿Desea Contiunar? (Y/N) " int2

        case $int2 in
            Y ) Main;;
            N ) exit;;
            * ) echo "Seleccione una opción valida";;
        esac
    done
}


Main
