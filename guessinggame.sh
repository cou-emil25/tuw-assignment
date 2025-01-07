#!/bin/bash

function count_files {
	echo $(ls -1 | wc -l)
}

function guessing_game {
  local file_count=$(count_files)
  local guess=-1

  echo "Guess the number of files in this directory! "

  while [[ $guess -ne $file_count ]]; do
    read -p "Enter your guess: " guess

    if [[ $guess -lt $file_count ]]; then
      echo "Low!"
    elif [[ $guess -gt $file_count ]]; then
      echo "High!"
    else
      echo "Correct."
    fi
  done
}

guessing_game
