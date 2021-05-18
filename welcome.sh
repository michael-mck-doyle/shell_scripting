#!/bin/zsh

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, which is the best day of the entire week!"
echo "Your zsh shell version is: $ZSH_VERSION. Enjoy!"

