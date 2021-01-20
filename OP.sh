#!/bin/sh

. Example.sh
. Default.sh

HtmlOption() {
    read -p "¿Quieres un ejemplo helloworld? (Yes/No): " example1
    case $example1 in
        Yes ) htmlexample;;
        No  ) Nope;;
        * ) echo "Opción no valida"; HtmlOption;;
    esac
}

JsOption(){
    read -p "¿Quieres un ejemplo helloworld? (Yes/No): " example2
    case $example2 in
        Yes ) jsexample;;
        No  ) Nope3;;
        * ) echo "Opción no valida"; JsOption;;
    esac
}

PyOption(){
    read -p "¿Quieres un ejemplo helloworld? (Yes/No): " example3
    case $example3 in
        Yes ) pyexample;;
        No ) Nope2;;
        * ) echo "Opción no valida"; PyOption;;
    esac
}

