import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+ - * /): ");
  String op = stdin.readLineSync()!;

  switch (op) {
    case '+':
      print("Result: ${a + b}");
      break;
    case '-':
      print("Result: ${a - b}");
      break;
    case '*':
      print("Result: ${a * b}");
      break;
    case '/':
      if (b == 0) {
        print("Error: division by zero!");
      } else {
        print("Result: ${a / b}");
      }
      break;
    default:
      print("Unknown operator");
  }
}
