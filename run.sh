#!/bin/bash

if [ -f "./out" ]; then
    rm -rf ./out
fi

mkdir ./out
mkdir ./out/books

markdown ./books/books.md > ./out/books/books.html
cp -r ./content ./out