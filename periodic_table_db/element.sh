#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"


GET_TYPE() {
  if [[ $1 == 1 ]]
  then
    TYPE=nonmetal
  elif [[ $1 == 2 ]]
  then
    TYPE=metal
  else
    TYPE=metalloid
  fi
}


if [[ ! $1 ]]
then
  echo "Please provide an element as an argument."
else
  ARG=$1
  re='^[0-9]+$'
  if [[ $1 =~ $re ]]
  then
    ELEMENT_INFO=$($PSQL "select * from elements inner join properties using(atomic_number) where atomic_number=$1")
    if [[ ! -z $ELEMENT_INFO ]]
    then
      echo "$ELEMENT_INFO" | while read ATOMIC_NUMBER B SYMBOL B NAME B ATOMIC_MASS B MELTING_POINT_CELSIUS B BOILING_POINT_CELSIUS B TYPE_ID
      do
        GET_TYPE $TYPE_ID
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
      done
    else
      echo "I could not find that element in the database."
    fi

  elif [ ${#ARG} == 1 ] || [ ${#ARG} == 2 ]
  then
    ELEMENT_INFO=$($PSQL "select * from elements inner join properties using(atomic_number) where symbol='$1'")
    if [[ ! -z $ELEMENT_INFO ]]
    then
      echo "$ELEMENT_INFO" | while read ATOMIC_NUMBER B SYMBOL B NAME B ATOMIC_MASS B MELTING_POINT_CELSIUS B BOILING_POINT_CELSIUS B TYPE_ID
      do 
        GET_TYPE $TYPE_ID
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
      done
    else
      echo "I could not find that element in the database."
    fi

  else
    ELEMENT_INFO=$($PSQL "select * from elements inner join properties using(atomic_number) where name='$1'")
    if [[ ! -z $ELEMENT_INFO ]]
    then
      echo "$ELEMENT_INFO" | while read ATOMIC_NUMBER B SYMBOL B NAME B ATOMIC_MASS B MELTING_POINT_CELSIUS B BOILING_POINT_CELSIUS B TYPE_ID
      do 
        GET_TYPE $TYPE_ID
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
      done
    else 
      echo "I could not find that element in the database."
    fi
  fi
fi
