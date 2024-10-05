#!/bin/bash

# Проверка количества аргументов
if [ "$#" -ne 2 ]; then
  echo "Использование: $0 <исходный путь> <целевой путь>"
  exit 1
fi

SOURCE=$1  # Исходный файл или папка
DESTINATION=$2  # Целевой файл или папка

# Проверяем, существует ли исходный файл или папка
if [ ! -e "$SOURCE" ]; then
  echo "Ошибка: Исходный путь не существует: $SOURCE"
  exit 1
fi

# Копируем файл или папку в зависимости от типа
if [ -d "$SOURCE" ]; then
  # Если это директория, используем cp с флагом -r
  cp -r "$SOURCE" "$DESTINATION"
  echo "Директория $SOURCE скопирована в $DESTINATION"
else
  # Если это файл
  cp "$SOURCE" "$DESTINATION"
  echo "Файл $SOURCE скопирован в $DESTINATION"
fi
