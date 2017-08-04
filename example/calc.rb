puts "Give me first number"
num1 = gets.chomp.to_i

puts "Give me second number"
num2 = gets.chomp.to_i

puts "Would you like to [a]dd, [s]ubtract, [m]ultiply, or [d]ivide?"
operation = gets.chomp.downcase

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
