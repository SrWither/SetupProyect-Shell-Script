#!/bin/sh


#Examples

pyexample(){
    for file in $(echo "print('HelloWorld!')")
    do
        echo $file > Main.py
    done
    sleep 3
}

jsexample(){
    for file2 in $(echo "console.log('HelloWorld!')")
    do
        echo $file2 > Main.js
    done
    sleep 3
}

htmlexample(){
    for file3 in $(echo "<!DOCTYPE html>
    <html>
        <head>
            <title>Proyecto</title>
        </head>
        <body>
            <p>HolaMundo!</p>
        </body>
    </html>
    ")
    do
        echo $file3 >> index.html
    done
    sleep 3
}

#Default

Nope(){
    touch index.html
}

Nope2(){
    touch Main.py
}

Nope3(){
    touch Main.js
}

#Opciones De Examples

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

#Lenguajes

python(){
    read -p "Ponga un nombre a su proyecto: " name
    sleep 2
    echo "Creando entorno de trabajo"
    mkdir $name
    cd $name
    PyOption
}

js(){
    read -p "Ponga un nombre a su proyecto: " name2
    sleep 2
    echo "Creando entorno de trabajo!"
    mkdir $name2
    cd $name2
    JsOption
}

html(){
    read -p "Ponga un nombre a su proyecto: " name3
    sleep 2
    echo "Creando entorno de trabajo!"
    mkdir $name3
    cd $name3
    touch style.css
    HtmlOption
}


#Selección de Lenguaje

while true; do
    read -p "Seleccione el tipo de proyecto: (html/python/javascript) " int1

    case $int1 in
        python ) python; exit;;
        javascript ) js; exit;;
        html ) html; exit;;
        * ) echo "Seleccione una opción valida";;
    esac
done
