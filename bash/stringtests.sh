#!/bin/bash
# This script demonstrates testing variables

# Test if the USER variable exists
# TASK 1: Add a command that prints out a labelled description of what is in the USER variable, but only if it is not empty
# TASK 2: Add a command that tells the user if the USER variable exists, but is empty
[ -v USER ] && echo "The variable SHELL exists"

echo "Task 1"
[ -n USER ] && echo "$USER"

echo "Task 2"
[ ! -z USER ] && echo "The variable SHELL exists but is empty"
# Tests for string data
# TASK 3: Modify the command to use the != operator instead of the = operator, without breaking the logic of the command
# TASK 4: Use the read command to ask the user running the script to give us strings to use for the tests
a=1
b=01
[ $a = $b ] && echo "$a is alphanumerically equal to $b" || echo "$a is not alphanumerically equal to $b"

echo "Task 3"
[ $a != $b ] && echo "$a is alphanumerically not equal to $b" || echo "$a is alphanumerically equal to $b"

echo "Task 4"
read -p 'Give your String1: ' str1
read -p 'Give your String2: ' str2
[ $str1 = $str2 ] && echo "$str1 is alphanumerically equal to $str2" || echo "$str1 is not alphanumerically equal to $str2"
