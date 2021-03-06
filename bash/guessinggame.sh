#!/bin/bash
#
# This script implements a guessing game
# it will pick a secret number from 1 to 10
# it will then repeatedly ask the user to guess the number
#    until the user gets it right

# Give the user instructions for the game
cat <<EOF
Let's play a game.
I will pick a secret number from 1 to 10 and you have to guess it.
If you get it right, you get a virtual prize.
Here we go!

EOF

# Pick the secret number and set their default guess to be a wrong answer
secretnumber=$(($RANDOM % 10 +1)) # save our secret number to compare later
userguess=0

# This loop repeatedly asks the user to guess and tells them if they got the right answer
# TASK 1: Test the user input to make sure it is not blank
# TASK 2: Test the user input to make sure it is a number from 1 to 10 inclusive
# TASK 3: Give them better feedback, telling them if their guess is too low, or too high
#userguess="testing"
#length=echo $userguess wc -m
#echo $length
#check_length () {
#  length=$(echo -n $userguess | wc -m)
#}

while [ "$userguess" != "$secretnumber" ]; do # loop around until they get it right
  read -p "Give me a number from 1 to 10: " userguess # ask for a guess
  length=$(echo -n $userguess | wc -m)
  if [ "$length" = "0" ] || [ $userguess -gt 10 ] || [ $userguess -lt 1 ]; then
    echo "It is not a number from 1 to 10"
  elif [ $userguess -lt $secretnumber ]; then
    echo "Too low, try again."
  elif [ $userguess -gt $secretnumber ]; then
    echo "Too high, try again."
  else
    echo "you win"
    break
  fi
done

#  elif [ "$userguess" -eq "$secretnumber" ]; then
#    echo "You got it! Have a milkdud."
#  elif [ "$userguess" -gt "$secretnumber" ]; then
#    echo "Your guess is too high. Try again!"
#  elif [ "$userguess" -lt "$secretnumber" ]; then
#    echo "Your guess is too low. Try again!"
#    exit
# fi
#done
#  if [ $userguess -lt $secretnumber ]; then
#    echo "Guess is too low. Try again!"
#  elif [ $userguess -gt $secretnumber ]; then
#    echo "Guess is too high. Try again!"
#  elif   [ $userguess -eq $secretnumber ]; then
#      echo "You got it! Have a milkdud."
#    exit
#  fi
#done
