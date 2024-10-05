#!/bin/bash

# Проверка правильности переданных аргументов
if [ "$#" -ne 3 ]; then
    echo "Использование: $0 <из категории> <в категорию> <имя>"
    echo "Категории: Преподаватели, Студенты, Оценки"
    exit 1
fi

SOURCE_CATEGORY=$1
TARGET_CATEGORY=$2
NAME=$3

# Проверка на существование категорий
if [[ "$SOURCE_CATEGORY" != "Преподаватели" && "$SOURCE_CATEGORY" != "Студенты" && "$SOURCE_CATEGORY" != "Оценки" ]]; then
    echo "Неизвестная категория. Используйте: Преподаватели, Студенты, Оценки."
    exit 1
fi

if [[ "$TARGET_CATEGORY" != "Преподаватели" && "$TARGET_CATEGORY" != "Студенты" && "$TARGET_CATEGORY" != "Оценки" ]]; then
    echo "Неизвестная категория. Используйте: Преподаватели, Студенты, Оценки."
    exit 1
fi

# Путь к файлам
SOURCE_FILE="task-1.7/database/${SOURCE_CATEGORY}/${NAME}.txt"
TARGET_FILE="task-1.7/database/${TARGET_CATEGORY}/${NAME}.txt"

# Проверяем наличие файла и перемещаем его
if [ -f "$SOURCE_FILE" ]; then
    mv "$SOURCE_FILE" "$TARGET_FILE"
    echo "Файл $NAME перемещен из категории $SOURCE_CATEGORY в категорию $TARGET_CATEGORY."
else
    echo "Файл $SOURCE_FILE не найден."
fi
