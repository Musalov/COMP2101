#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

echo "Enter the First Number"
read firstnum
echo "Enter the First Number"
read secondnum
multiply=$((firstnum * secondnum))
sub=$((firstnum - secondnum))
modulus=$((firstnum % secondnum))
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
$firstnum divided by $secondnum has a remainder of $modulus
$firstnum multiply $secondnum is $multiply
$firstnum minus $secondnum is $sub

EOF
