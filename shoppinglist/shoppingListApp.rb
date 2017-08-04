#name of shopping list array
shoppingList = []

#done variable for outer loop; if user has finished, done = 1
done = 0
#valid variable for inner loop; if user inputs correctly, valid = 1
valid = 0

#while user is not done, continue executing the code
while done == 0
  puts "What would you like to buy?"
  item = gets.chomp

#using the shorthand of .push to add user-input to the array
  shoppingList << item

#This loop checks if user gives a valid yes/no input
  while valid == 0
    puts "Are you done? [y/n]"
    input = gets.chomp.downcase
    if (input == "y") || (input == "n")
    valid = 1 #This will stop the loop
    else
      print "Invalid input, please try again. "
      valid = 0
    end
  end

=begin
This if/else checks if the user has finished adding to the array.
If user has finished, done = 1, which will stop the entire loop
=end
  if input == "y"
    done = 1
  else
    input == "n"
    done = 0
    valid = 0
  end

end

puts "You have the following items in your list:"
shoppingList.each do |blah|
  puts "#{blah}"
end
