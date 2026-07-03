print "Enter first number: "
a = gets.to_f

print "Enter second number: "
b = gets.to_f

print "Enter operator (+ - * /): "
op = gets.chomp

case op
when "+"
  puts "Result: #{a + b}"
when "-"
  puts "Result: #{a - b}"
when "*"
  puts "Result: #{a * b}"
when "/"
  if b == 0
    puts "Error: division by zero!"
  else
    puts "Result: #{a / b}"
  end
else
  puts "Unknown operator"
end
