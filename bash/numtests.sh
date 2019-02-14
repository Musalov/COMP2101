#!/bin/bash
# this script demonstrates doing numeric tests in bash

# TASK 1: Improve it by getting the user to give us the numbers to use in our tests
# TASK 2: Improve it by adding a test to tell the user if the numbers are even or odd
# TASK 3: Improve it by adding a test to tell the user is the second number is a multiple of the first number

echo "Task 1"
read -p 'Enter your first number: ' firstNumber
read -p 'Enter your second number: ' secondNumber
[ $firstNumber -eq $secondNumber ] && echo "The two numbers are the same"
[ $firstNumber -ne $secondNumber ] && echo "The two numbers are not the same"
[ $firstNumber -lt $secondNumber ] && echo "The first number is less than the second number"
[ $firstNumber -gt $secondNumber ] && echo "The first number is greater than the second number"

[ $firstNumber -le $secondNumber ] && echo "The first number is less than or equal to the second number"
[ $firstNumber -ge $secondNumber ] && echo "The first number is greater than or equal to the second number"

echo "Task 2"
if [ $((firstNumber%2)) -eq 0 ]
then
echo "The first number is even"
else
echo "The first number is odd"
fi

if [ $((secondNumber%2)) -eq 0 ]
then
echo "The second number is even"
else
echo "The second number is odd"
fi

echo "Task 3"

remainder=$(( $secondNumber % $firstNumber))
if [ "$remainder" -eq 0];
then
echo "Second number a multiple of first number"
else
echo "Second number not a multiple of first number"
fi
