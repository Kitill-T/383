#!/bin/bash

# Спросить у пользователя ФИО
read -p "Введите ваше ФИО (на русском): " full_name

# Спросить у пользователя фамилию
read -p "Введите вашу фамилию (на английском): " last_name

# Спросить возраст пользователя
read -p "Введите ваш возраст: " age

# Спросить хобби пользователя
read -p "Введите ваше хобби: " hobby

# Создать папку пользователя с именем фамилии
mkdir -p "$last_name"

# Создать папки documents, videos, photos
mkdir -p "$last_name/documents" "$last_name/videos" "$last_name/photos"

# Создать по 3 файла в каждой папке
for folder in documents videos photos; do
    for i in {1..3}; do
        touch "$last_name/$folder/file${i}.txt"
    done
done

# Создать папку archive
mkdir -p "$last_name/archive"

# Создать папки для каждого года возраста
for ((i = 1; i <= age; i++)); do
    mkdir -p "$last_name/archive/$i/documents" "$last_name/archive/$i/videos" "$last_name/archive/$i/photos"

    # Создать по 3 файла в каждой из папок
    for folder in documents videos photos; do
        for j in {1..3}; do
            touch "$last_name/archive/$i/$folder/file${j}.txt"
        done
    done
done

echo "Структура папок и файлов успешно создана для пользователя $full_name ($last_name)!"
