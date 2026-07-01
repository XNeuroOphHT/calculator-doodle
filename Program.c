#include <stdio.h>

int main() {
    double a, b;
    char op;

    printf("Enter first number: ");
    scanf("%lf", &a);
    printf("Enter second number: ");
    scanf("%lf", &b);
    printf("Enter operator (+, -, *, /): ");
    scanf(" %c", &op);

    if (op == '+') {
        printf("Result: %.2f\n", a + b);
    } else if (op == '-') {
        printf("Result: %.2f\n", a - b);
    } else if (op == '*') {
        printf("Result: %.2f\n", a * b);
    } else if (op == '/') {
        if (b == 0) {
            printf("Error: division by zero!\n");
        } else {
            printf("Result: %.2f\n", a / b);
        }
    } else {
        printf("Unknown operator\n");
    }

    return 0;
}
