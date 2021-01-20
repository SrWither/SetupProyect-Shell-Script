#!/bin/sh

. OP.sh

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
