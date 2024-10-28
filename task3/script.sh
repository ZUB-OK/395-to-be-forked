#!/bin/bash

read -p "Укажите название курса" c_name
if [ ! -d "$c_name" ]; then
  mkdir "$c_name"
  echo "Не было такого курса, теперь создан"
fi
mkdir "$c_name/Студенты"


read -p "Сколько студентов в группе? " num_students
for ((i=1; i<=num_students; i++)); do
  read -p "Студент $i (имя)?" s_name
  echo "Студент: $s_name - Оценка: " >> "$c_name/Оценки.txt"
done

echo "Оценки добавлены добавлены для $c_name"

edit() {
  nano "$c_name/Оценки.txt"
  echo "Оценки успешно отредактированы."
}

read -p "Хотите отредактировать оценки?(напишите да)" answer
if [ "$answer" == "да" ]; then
  edit
fi
