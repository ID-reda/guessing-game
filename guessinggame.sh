#!/bin/bash

function count_files {
  echo $(ls -1 | wc -l)
}

file_count=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while true; do
  read -p "Enter your guess: " user_guess

  if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid positive integer."
    continue
  fi

  if [[ $user_guess -lt $file_count ]]; then
    echo "Too low! Try again."
  elif [[ $user_guess -gt $file_count ]]; then
    echo "Too high! Try again."
  else
    echo "Congratulations! You guessed it right."
    break
  fi
done

exit 0
