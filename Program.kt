fun main() {
    print("Enter first number: ")
    val a = readLine()!!.toDouble()

    print("Enter second number: ")
    val b = readLine()!!.toDouble()

    print("Enter operator (+ - * /): ")
    val op = readLine()!!

    when (op) {
        "+" -> println("Result: ${a + b}")
        "-" -> println("Result: ${a - b}")
        "*" -> println("Result: ${a * b}")
        "/" -> {
            if (b == 0.0)
                println("Error: division by zero!")
            else
                println("Result: ${a / b}")
        }
        else -> println("Unknown operator")
    }
}
