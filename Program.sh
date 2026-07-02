#!/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter operator (+ - * /): " op

case "$op" in
  "+") echo "Result: $(echo "$a + $b" | bc)" ;;
  "-") echo "Result: $(echo "$a - $b" | bc)" ;;
  "*") echo "Result: $(echo "$a * $b" | bc)" ;;
  "/")
      if [ "$b" = "0" ]; then
        echo "Error: division by zero!"
      else
        echo "Result: $(echo "scale=10; $a / $b" | bc)"
      fi
      ;;
  *) echo "Unknown operator" ;;
esac
