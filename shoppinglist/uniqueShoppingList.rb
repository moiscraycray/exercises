=begin
The purpose of this code is to have 2 shopping lists and merge them together.
However, the final shopping list cannot have duplicates, it can only show unique items.
This code creates the illusion that are 2 arrays by asking for the user's names,
but the users are adding to the same shopping list.
=end

shoppingList = []
complete = 0 #This variable indicates how many users can add to the list
valid = 0
user = 0

#array = array.uniq is the method to remove duplicates

while complete < 2 #Only 2 users can add to list at the moment

  if user == 0 #To indicate whether the previous user has finished
    puts "What is your name?"
    name = gets.chomp
  end

  puts "What would you like to buy?"
  item = gets.chomp

  shoppingList << item

=begin
This is the same code from shoppingListApp.rb. It checks whether the
user has given a valid input.
=end
  while valid == 0
    puts "Are you done #{name}? [y/n]"
    input = gets.chomp.downcase
    if (input == "y") || (input == "n")
      valid = 1
    else
      print "Invalid input, please try again. "
      valid = 0
    end
  end

=begin
If the first user has finished, the variable 'complete' will increase by 1.
After the second user has finished, the same variable will increase by 1 again,
thereby meeting the loop condition 'while < 2' and thus ending the loop.
=end
  if input == "y"
    valid = 0
    complete += 1
    user = 0
  else
    input == "n"
    valid = 0
    user = 1 #This doesn't satisfy the first if/else, thus it doesn't run again
  end

end


#The .uniq has removed all duplicates from the shoppingList array.
shoppingList = shoppingList.uniq 

puts "You have the following items in your list:"
shoppingList.each do |blah|
  puts "#{blah}"
end
