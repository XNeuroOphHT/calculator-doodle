open System

printf "Enter first number: "
let a = Console.ReadLine() |> float

printf "Enter second number: "
let b = Console.ReadLine() |> float

printf "Enter operator (+ - * /): "
let op = Console.ReadLine()

match op with
| "+" -> printfn "Result: %f" (a + b)
| "-" -> printfn "Result: %f" (a - b)
| "*" -> printfn "Result: %f" (a * b)
| "/" ->
    if b = 0.0 then
        printfn "Error: division by zero!"
    else
        printfn "Result: %f" (a / b)
| _ -> printfn "Unknown operator"
