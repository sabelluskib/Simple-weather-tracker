#!/usr/bin/bash

city=$1

temp=`curl -s wttr.in/${city}?format=j1 | jq '.["current_condition"][0]["temp_C"]'`
humid=`curl -s wttr.in/${city}?format=j1 | jq '.["current_condition"][0]["humidity"]'`
date=`date +'%d %B %H:%M:%S'`


echo "<!DOCTYPE html>"
echo "<html lang="ru">"
echo "<head>"
echo "    <meta charset="UTF-8">" 
echo "    <title>Информация о погоде</title>"
echo "</head>"
echo "<body>"
echo "   <p>Температура в городе" ${city} ":" ${temp:1: -1} "</p>"
echo "   <p>Влажность: " ${humid:1: -1}"% </p>"
echo "   <p>Обновлено:" ${date}" </p>"
echo "</body>"
echo "</html>"
