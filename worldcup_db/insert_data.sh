#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "truncate games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" && $OPPONENT != "opponent" ]]
  then
    #GET team_id
    TEAM_ID=$($PSQL "select team_id from teams where name='$WINNER'")

    #if not found
    if [[ -z $TEAM_ID ]]
    then
      INSERT_NAME=$($PSQL "insert into teams(name) values('$WINNER')")
      if [[ $INSERT_NAME == "INSERT 0 1" ]]
      then 
        echo Inserted into name, $WINNER
      fi
    fi

    #GET team_id
    TEAM_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")

    #if not found
    if [[ -z $TEAM_ID ]]
    then
      INSERT_NAME=$($PSQL "insert into teams(name) values('$OPPONENT')")
      if [[ $INSERT_NAME == "INSERT 0 1" ]]
      then 
        echo Inserted into name, $OPPONENT
      fi
    fi
  fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")

    INSERT_DATA=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
      if [[ $INSERT_DATA == "INSERT 0 1" ]]
      then 
        echo Inserted into GAMES TABLE $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS
      fi

  fi
done

