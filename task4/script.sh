#!/bin/bash

echo "Введите имя пользователя"
read name

cd /c/Users/user.COM304-16/users
mkdir "$name"
cd "$name"

git init

mkdir photos 
cd photos
mkdir 2020 2021 2022 2023 2024
touch 2020/default.png 2021/default.png 2022/default.png 2023/default.png 2024/default.png
cd ..
git add .
git commit -m "ЮЗЕР $NAME ЗАГРУЗИЛ ФОТОГРАФИИ"


mkdir videos
cd videos
mkdir 2020 2021 2022 2023 2024
touch 2020/default.mp4 2021/default.mp4 2022/default.mp4 2023/default.mp4 2024/default.mp4
cd ..
git add .
git commit -m "ЮЗЕР $NAME ЗАГРУЗИЛ ВИДОСЫ0"


mkdir documents
cd documents
mkdir 2020 2021 2022 2023 2024
touch 2020/default.mp4 2021/default.mp4 2022/default.mp4 2023/default.mp4 2024/default.mp4
cd ..
git add .
git commit -m "ЮЗЕР $NAME ЗАГРУЗИЛ ДОКУМЕНТЫ"
