#!/usr/bin/env bash
# File: guessinggame.sh

function getthecount {
  cnt=$(find . -maxdepth 1 -type f|wc -l)
  echo $cnt
}

count=$(getthecount)
echo "Hi! Write the number of files in this directory."
read num

while [[ $count -ne $num ]]
do
  if [[ $count -gt $num ]]
  then
    echo "Incorrect unswer. The number you specified is too small. Try again."
    read num
  elif [[ $count -lt $num ]]
  then
    echo "Incorrect unswer. The number you specified is too much. Try again."
    read num
  fi
done

echo "You guessed."
