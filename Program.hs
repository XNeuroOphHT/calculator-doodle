main :: IO ()
main = do
    putStrLn "Enter first number:"
    a <- readLn :: IO Double

    putStrLn "Enter second number:"
    b <- readLn :: IO Double

    putStrLn "Enter operator (+ - * /):"
    op <- getLine

    case op of
        "+" -> print (a + b)
        "-" -> print (a - b)
        "*" -> print (a * b)
        "/" -> if b == 0
               then putStrLn "Error: division by zero!"
               else print (a / b)
        _   -> putStrLn "Unknown operator"
