#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"

echo "Enter your username: "
read -r NAME

USER=$($PSQL "SELECT * FROM users WHERE username = $NAME")
IFS='|' read -r USER_ID USERNAME GAMES_PLAYED BEST_GAME <<< $USER 
if [ -z $USER ]
then 
  echo -e "\nWelcome, $NAME! It look like this is your first time here.\n"
else
  echo -e "\nWelcome back, $USERNAME! You have played $GAMEPLAYED games, and your best game took $BEST_GAME guesses.\n"
fi

TARGET=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0
echo "Guess the secret number between 1 and 1000:"
read -r GUESS