<?php

echo "Enter first number: ";
$a = floatval(trim(fgets(STDIN)));

echo "Enter second number: ";
$b = floatval(trim(fgets(STDIN)));

echo "Enter operator (+ - * /): ";
$op = trim(fgets(STDIN));

switch ($op) {
    case "+":
        echo "Result: " . ($a + $b) . PHP_EOL;
        break;
    case "-":
        echo "Result: " . ($a - $b) . PHP_EOL;
        break;
    case "*":
        echo "Result: " . ($a * $b) . PHP_EOL;
        break;
    case "/":
        if ($b == 0) {
            echo "Error: division by zero!" . PHP_EOL;
        } else {
            echo "Result: " . ($a / $b) . PHP_EOL;
        }
        break;
    default:
        echo "Unknown operator" . PHP_EOL;
}
