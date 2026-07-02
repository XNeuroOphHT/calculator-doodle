import std.stdio;

void main() {
    writeln("Enter first number: ");
    double a = readln().to!double;

    writeln("Enter second number: ");
    double b = readln().to!double;

    writeln("Enter operator (+ - * /): ");
    string op = readln().strip;

    final switch (op) {
        case "+":
            writeln("Result: ", a + b);
            break;
        case "-":
            writeln("Result: ", a - b);
            break;
        case "*":
            writeln("Result: ", a * b);
            break;
        case "/":
            if (b == 0)
                writeln("Error: division by zero!");
            else
                writeln("Result: ", a / b);
            break;
        default:
            writeln("Unknown operator");
    }
}
