#!/bin/bash
AGE=$1
read -p "enter you age:" AGE

if [$AGE -gt 60]
then

echo "you are not eligible"

else
echo "you are eligible"
fi