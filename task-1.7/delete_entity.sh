#!/bin/bash

# Проверка правильности переданных аргументов
if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <категория> <имя>"
    echo "Категории: Преподаватели, Студенты, Оценки"
    exit 1
fi

CATEGORY=$1
NAME=$2

# Проверка на существование категории
if [[ "$CATEGORY" != "Преподаватели" && "$CATEGORY" != "Студенты" && "$CATEGORY" != "Оценки" ]]; then
    echo "Неизвестная категория. Используйте: Преподаватели, Студенты, Оценки."
    exit 1
fi

# Путь к файлу
FILE="task-1.7/database/${CATEGORY}/${NAME}.txt"

# Удаляем файл
if [ -f "$FILE" ]; then
    rm "$FILE"
    echo "Файл $NAME в категории $CATEGORY удален."
else
    echo "Файл $FILE не найден."
fi
