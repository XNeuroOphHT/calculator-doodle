# simple calculator with + - * / and divide-by-zero protection

a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
op = input("Enter operator (+, -, *, /): ")

if op == "+":
    print("Result:", a + b)
elif op == "-":
    print("Result:", a - b)
elif op == "*":
    print("Result:", a * b)
elif op == "/":
    if b == 0:
        print("Error: division by zero!")
    else:
        print("Result:", a / b)
else:
    print("Unknown operator")
