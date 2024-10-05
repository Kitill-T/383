#!/bin/bash

# Создаем корневую папку lab-03
mkdir -p lab-03

# Переходим в папку lab-03
cd lab-03

# Создаем папку teachers и файлы в ней
mkdir -p teachers
touch teachers/letter-a.json teachers/letter-b.json teachers/letter-c.json

# Создаем папку students
mkdir -p students

# Создаем папку current и файлы в ней
mkdir -p students/current
touch students/current/letter-a.json students/current/letter-b.json students/current/letter-c.json

# Создаем папку dismissed и файлы в ней
mkdir -p students/dismissed
touch students/dismissed/letter-a.json students/dismissed/letter-b.json students/dismissed/letter-c.json

# Создаем папку subjects и файлы в ней
mkdir -p subjects
touch subjects/letter-a.json subjects/letter-b.json subjects/letter-c.json

# Создаем папку schedule и файлы в ней
mkdir -p schedule
touch schedule/date-18.01.2024.json schedule/date-19.01.2024.json schedule/date-20.01.2024.json

echo "Структура папок и файлов успешно создана!"
