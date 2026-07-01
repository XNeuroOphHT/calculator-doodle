// simple calculator with + - * / and divide-by-zero protection

const a = parseFloat(prompt("Enter first number:"));
const b = parseFloat(prompt("Enter second number:"));
const op = prompt("Enter operator (+, -, *, /):");

let result;

if (op === "+") {
  result = a + b;
} else if (op === "-") {
  result = a - b;
} else if (op === "*") {
  result = a * b;
} else if (op === "/") {
  if (b === 0) {
    alert("Error: division by zero!");
  } else {
    result = a / b;
  }
} else {
  alert("Unknown operator");
}

if (result !== undefined) {
  alert("Result: " + result);
}
