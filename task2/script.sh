#!/bin/bash

echo "Введите название проекта"
read name
echo "Введите директорию для создания проекта"
read dir
full = "$dir"/"$name"

echo "$full"

mkdir "$full"
mkdir "$full"/scr
mkdir "$full"/scr/scripts
mkdir "$full"/scr/styles
mkdir "$full"/scr/images

echo "# $name" > "$full/README.md"
echo "*.log node_modules/" > "$full/.gitignore"
