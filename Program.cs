internal class Program
{
    private static  void Main(string[] args)
    {
        Console.WriteLine("===CALCULATOR===");
        Console.WriteLine("All systems are nominal and communicating with servers(https://xhnt.netlify.app)");
        Console.WriteLine("Enter your first number");
        int First_Number = Convert.ToInt32( Console.ReadLine());
        Console.Beep();

        Console.WriteLine("Enter your second number");
        int Second_Number = Convert.ToInt32( Console.ReadLine());
        Console.Beep();

        Console.WriteLine("Enter your desired operator (+,-,*,/)");
        string? Operator = Console.ReadLine();

        int Result = 0;

        switch (Operator)
        {
            case "+":
                Result = First_Number + Second_Number;
                break;
            case "-":
                Result = First_Number - Second_Number;
                break;
            case "*":
                Result = First_Number * Second_Number;
                break;

            case "/":
                if (Second_Number == 0)
                {
                    Console.WriteLine("ERROR DIVISION BY 0!");
                    return;
                }
                else
                {
                    Result = First_Number / Second_Number;
                }
                break;
            default:
                Console.WriteLine("INVALID");
                return;
        }
        Console.WriteLine($"Result: {Result}");
        Console.Beep();
           

    }
}