
=begin
The code below checks whether the user has given a valid input.
The valid input must be an integer, otherwise the program will continue to
ask the user to give an integer.
=end
begin
  puts "What is the temperature?"
  temp = Integer(gets.chomp)

rescue ArgumentError
  puts "Invalid input, please try again"
  retry
end

valid = 0
while valid == 0
  puts "What is your gender? [f/m]"
  sex = gets.chomp.downcase

  if (sex == "f") || (sex == "m")
    valid = 1
  else
    puts "What are you doing?"
    valid = 0
  end
end


if (sex == "f") && (temp >= 20)
  puts "Wear a cute outfit"
elsif (sex == "f") && (temp < 20 && temp > 0)
  puts "Break out the scarves!"
elsif (sex == "f") && (temp <= 0)
  puts "You died"
elsif (sex == "m") && (temp >= 20)
  puts "Wear shorts"
elsif (sex == "m") && (temp < 20 && temp > 0)
  puts "Grab your hoodie"
else
  puts "You died"
end
