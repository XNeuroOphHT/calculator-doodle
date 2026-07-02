import Foundation

print("Enter first number: ", terminator: "")
let a = Double(readLine()!)!

print("Enter second number: ", terminator: "")
let b = Double(readLine()!)!

print("Enter operator (+ - * /): ", terminator: "")
let op = readLine()!

switch op {
case "+":
    print("Result: \(a + b)")
case "-":
    print("Result: \(a - b)")
case "*":
    print("Result: \(a * b)")
case "/":
    if b == 0 {
        print("Error: division by zero!")
    } else {
        print("Result: \(a / b)")
    }
default:
    print("Unknown operator")
}
