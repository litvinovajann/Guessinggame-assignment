#!/usr/bin/env bash

number=$(ls -a | wc -l)
function guess {
echo "How many files are in the current directory? Try to guess!"
read response
echo "You entered: $response"
if [[ $response -eq $number ]]
then 
  echo "It is the correct answer! Congratulations!"
else
while [[ $response -ne $number ]]
  do
    if [[ $response -gt $number ]]
    then
       echo "Try a smaller number"
     else 
        echo "Try a bigger number"
    fi
    echo "Your next guess is: "
    read response
    if [[ $response -eq $number ]]
    then
       echo "It is the correct answer! Congratulations!"
    fi
  done
fi
}
guess
