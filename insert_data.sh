#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams")

# while loop from games.csv
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
# Eliminate Heading Row
if [[ $YEAR != "year" ]]
then
  # insert both team into teams table
  W_TEAM=$($PSQL "SELECT * FROM teams WHERE name='$WINNER'")
  if [[ $WINNER != "winner" ]]
  then
    # check if winner exists
    if [[ -z $W_TEAM ]]
    then
      INSERT_WTEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WTEAM == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $WINNER
      else
        echo Failed insert into teams, $WINNER
      fi
    fi
  fi

  O_TEAM=$($PSQL "SELECT * FROM teams WHERE name='$OPPONENT'")
  if [[ $OPPONENT != "opponent" ]]
  then
    # check if opponent exists
    if [[ -z $O_TEAM ]]
    then
      INSERT_OTEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OTEAM == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $OPPONENT
      else
        echo Failed insert into teams, $OPPONENT
      fi
    fi
  fi

  # get team_id for both teams
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  if [[ -n $WINNER_ID || -n $OPPONENT_ID ]]
  then
    # echo $YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS
    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAMES == "INSERT 0 1" ]]
    then
      echo Inserted into games
    else
      echo Failed to insert into games
    fi
  fi
fi
done