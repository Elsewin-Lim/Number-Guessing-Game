#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username: "
read -r NAME

USER=$($PSQL "SELECT * FROM users WHERE username = '$NAME'")
IFS='|' read -r USER_ID USERNAME GAME_PLAYED BEST_GAME <<< "$USER" 
if [[ -z $USER ]]
then 
  echo "Welcome, $NAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
fi

TARGET=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0
echo "Guess the secret number between 1 and 1000:"
read -r GUESS

while true
  do
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      read -r GUESS
      continue
    fi
    (( GUESS_COUNT++ ))
    if (( GUESS > TARGET ))
    then
      echo "It's lower than that, guess again: "
      read -r GUESS
    elif (( GUESS < TARGET ))
    then
      echo "It's higher than that, guess again: "
      read -r GUESS
    else
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $TARGET. Nice job!"
      break
    fi
done

if [[ -z $USER ]]
then
  INSERT_RESULT=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$NAME', 1, $GUESS_COUNT);")
else
  (( GAME_PLAYED++ ))

  if [[ $GUESS_COUNT -lt $BEST_GAME ]]
  then
    BEST_GAME=$GUESS_COUNT
  fi

  UPDATE_RESULT=$($PSQL "UPDATE users SET games_played = $GAME_PLAYED, best_game = $BEST_GAME WHERE username = '$NAME';")
fi