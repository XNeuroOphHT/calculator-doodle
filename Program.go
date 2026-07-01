package main

import (
    "fmt"
)

func main() {
    var a, b float64
    var op string

    fmt.Print("Enter first number: ")
    fmt.Scan(&a)

    fmt.Print("Enter second number: ")
    fmt.Scan(&b)

    fmt.Print("Enter operator (+ - * /): ")
    fmt.Scan(&op)

    switch op {
    case "+":
        fmt.Println("Result:", a+b)
    case "-":
        fmt.Println("Result:", a-b)
    case "*":
        fmt.Println("Result:", a*b)
    case "/":
        if b == 0 {
            fmt.Println("Error: division by zero!")
        } else {
            fmt.Println("Result:", a/b)
        }
    default:
        fmt.Println("Unknown operator")
    }
}
