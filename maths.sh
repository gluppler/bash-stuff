#!/bin/bash

# Define functions for each operation
function Addition() {
    echo "Enter two numbers to add: "
    read num1 num2
    result=$(echo "scale=2;$num1 + $num2" | bc)
    echo "The result is: $result"
}

function Subtraction() {
    echo "Enter two numbers to subtract: "
    read num1 num2
    result=$(echo "scale=2;$num1 - $num2" | bc)
    echo "The result is: $result"
}

function Multiplication() {
    echo "Enter two numbers to multiply: "
    read num1 num2
    result=$(echo "scale=2;$num1 * $num2" | bc)
    echo "The result is: $result"
}

function Division() {
    echo "Enter two numbers to divide: "
    read num1 num2
    if [ "$num2" == "0" ]; then
        echo "Error: Division by zero is not allowed!"
    else
        result=$(echo "scale=2;$num1 / $num2" | bc)
        echo "The result is: $result"
    fi
}

# Main script
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "Enter a number to choose: "

read choice

case $choice in
    1) Addition ;;
    2) Subtraction ;;
    3) Multiplication ;;
    4) Division ;;
    *) echo "Invalid choice" ;;
esac
