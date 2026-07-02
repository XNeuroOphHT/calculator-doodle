cat("Enter first number: ")
a <- as.numeric(readline())

cat("Enter second number: ")
b <- as.numeric(readline())

cat("Enter operator (+ - * /): ")
op <- readline()

if (op == "+") {
    cat("Result:", a + b, "\n")
} else if (op == "-") {
    cat("Result:", a - b, "\n")
} else if (op == "*") {
    cat("Result:", a * b, "\n")
} else if (op == "/") {
    if (b == 0) {
        cat("Error: division by zero!\n")
    } else {
        cat("Result:", a / b, "\n")
    }
} else {
    cat("Unknown operator\n")
}
