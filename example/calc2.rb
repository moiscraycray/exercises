
=begin
def name(argument ...)
  if/else
  loops
  aritmetic
  arrays
=end

puts "Give me first number"
num1 = gets.chomp.to_f

puts "Give me second number"
num2 = gets.chomp.to_f

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

valid = 0
while valid == 0
  puts "Would you like to [a]dd, [s]ubtract, [m]ultiply, or [d]ivide?"
  operation = gets.chomp.downcase
  case operation
    when "a"
      puts "The answer is #{add(num1, num2)}"
      valid = 1
    when "s"
      puts "The answer is #{subtract(num1, num2)}"
      valid = 1
    when "m"
      puts "The answer is #{multiply(num1, num2)}"
      valid = 1
    when "d"
      puts "The answer is #{divide(num1, num2)}"
      valid = 1
    else
      puts "Error, what are you doing?"
  end
end
=begin
if operation == "a"
  sum = num1 + num2
  puts "The answer is #{sum}"
elsif operation == "s"
  sum = num1 - num2
  puts "The answer is #{sum}"
elsif operation == "m"
  sum = num1 * num2
  puts "The answer is #{sum}"
elsif operation == "d"
  sum = num1 / num2
  puts "The answer is #{sum}"
else
  puts "Error, what are you doing"
end
=end
