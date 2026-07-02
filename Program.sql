-- Simple SQL calculator using variables

SET @a = 10;
SET @b = 5;
SET @op = '+';

SELECT
    CASE @op
        WHEN '+' THEN @a + @b
        WHEN '-' THEN @a - @b
        WHEN '*' THEN @a * @b
        WHEN '/' THEN
            CASE
                WHEN @b = 0 THEN 'Error: division by zero!'
                ELSE @a / @b
            END
        ELSE 'Unknown operator'
    END AS result;
