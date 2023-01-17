#!/bin/bash
echo -e "\n~~~~~ NUMBER GUESSING GAME ~~~~~\n"
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
 
  echo -e 'Enter your username:\n'
 read USERNAME
  USERNAME_ID=$($PSQL "SELECT username_id FROM users WHERE '$USERNAME'= username")
  if [[ -z $USERNAME_ID ]]
   then
    INSERT_USER_INFO=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    USERNAME_ID=$($PSQL "SELECT username_id FROM users WHERE '$USERNAME'= username")
   echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
   else
   GAMES_PLAYED=$($PSQL "SELECT COUNT(username_id) FROM games WHERE $USERNAME_ID=username_id")
   NUMBER_GUESSES=$($PSQL "SELECT MIN(guesses) FROM games WHERE $USERNAME_ID=username_id")
   echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $NUMBER_GUESSES guesses."
   fi

  SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
  GUESS=1
  echo -e "\nGuess the secret number between 1 and 1000:"
 
  while read NUM
  do
  if [[ ! $NUM =~ ^[0-9]+$ ]]
  then
      echo -e "\nThat is not an integer, guess again:"
  elif [[ $NUM -eq $SECRET_NUMBER ]]
  then
  break;
  elif [[ $NUM -gt $SECRET_NUMBER ]]
  then
  echo -e "\nIt's lower than that, guess again:"
  elif [[ $NUM -lt $SECRET_NUMBER ]]
  then
  echo -e "\nIt's higher than that, guess again:"
  
  fi 
  GUESS=$(( $GUESS + 1)) 
  done
 INSERT_GAME_INFO=$($PSQL "INSERT INTO games(username_id,guesses) VALUES('$USERNAME_ID',$GUESS)")
 
echo -e "\nYou guessed it in $GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"




