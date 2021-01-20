#!/bin/sh


pyexample(){
    for file in $(echo "print('HelloWorld!')")
    do
        echo $file > Main.py
    done
    sleep 3
    echo "Completado"
    cd ..
    Main2
}

jsexample(){
    for file2 in $(echo "console.log('HelloWorld!')")
    do
        echo $file2 > Main.js
    done
    sleep 3
    echo "Completado"
    cd ..
    Main2
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
    echo "Completado"
    cd ..
    Main2
}