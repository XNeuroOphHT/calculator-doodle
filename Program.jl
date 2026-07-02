println("Enter first number: ")
a = parse(Float64, readline())

println("Enter second number: ")
b = parse(Float64, readline())

println("Enter operator (+ - * /): ")
op = readline()

if op == "+"
    println(a + b)
elseif op == "-"
    println(a - b)
elseif op == "*"
    println(a * b)
elseif op == "/"
    if b == 0
        println("Error: division by zero!")
    else
        println(a / b)
    end
else
    println("Unknown operator")
end
