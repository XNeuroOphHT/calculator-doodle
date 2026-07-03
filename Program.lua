io.write("Enter first number: ")
local a = tonumber(io.read())

io.write("Enter second number: ")
local b = tonumber(io.read())

io.write("Enter operator (+ - * /): ")
local op = io.read()

if op == "+" then
    print("Result:", a + b)
elseif op == "-" then
    print("Result:", a - b)
elseif op == "*" then
    print("Result:", a * b)
elseif op == "/" then
    if b == 0 then
        print("Error: division by zero!")
    else
        print("Result:", a / b)
    end
else
    print("Unknown operator")
end
