import * as readline from "readline";

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function ask(q: string): Promise<string> {
  return new Promise(resolve => rl.question(q, resolve));
}

(async () => {
  const a = parseFloat(await ask("Enter first number: "));
  const b = parseFloat(await ask("Enter second number: "));
  const op = await ask("Enter operator (+ - * /): ");

  switch (op) {
    case "+":
      console.log("Result:", a + b);
      break;
    case "-":
      console.log("Result:", a - b);
      break;
    case "*":
      console.log("Result:", a * b);
      break;
    case "/":
      if (b === 0) console.log("Error: division by zero!");
      else console.log("Result:", a / b);
      break;
    default:
      console.log("Unknown operator");
  }

  rl.close();
})();
