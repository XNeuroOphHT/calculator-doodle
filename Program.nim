import strutils

echo "Enter first number: "
let a = readLine().parseFloat()

echo "Enter second number: "
let b = readLine().parseFloat()

echo "Enter operator (+ - * /): "
let op = readLine()

case op:
  of "+":
    echo a + b
  of "-":
    echo a - b
  of "*":
    echo a * b
  of "/":
    if b == 0:
      echo "Error: division by zero!"
    else:
      echo a / b
  else:
    echo "Unknown operator"
