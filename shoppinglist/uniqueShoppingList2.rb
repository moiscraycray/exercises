
=begin
The example belows shows how to merge arrays and remove duplicates.

a1 = [1, 2, 3, 4, 5, 6]
a2 = [1, 2, 34, 64, 98]

puts (a1 + a2).uniq
=end

=begin
This is the same code from uniqueShoppingList.rb but the code runs a second time
because there's 2 users with 2 separate shopping lists. Therefore, the code
has been copied&pasted after the first block of code.
=end
shoppingList = []
done = 0
valid = 0

while done == 0
  puts "What would you like to buy?"
  item = gets.chomp

  shoppingList << item


  while valid == 0
    puts "Are you done? [y/n]"
    input = gets.chomp.downcase
    if (input == "y") || (input == "n")
    valid = 1
    else
      print "Invalid input, please try again. "
      valid = 0
    end
  end

  if input == "y"
    done = 1
  else
    input == "n"
    done = 0
    valid = 0
  end

  shoppingList << item

end

#This next block of code is for the second user or second list
shoppingList2 = []
done2 = 0
valid2 = 0

print "This is your second list. "

while done2 == 0
  puts "What would you like to buy?"
  item2 = gets.chomp

  shoppingList2 << item2


  while valid2 == 0
    puts "Are you done? [y/n]"
    input2 = gets.chomp.downcase
    if (input2 == "y") || (input2 == "n")
    valid2 = 1
    else
      print "Invalid input, please try again. "
      valid2 = 0
    end
  end

  if input2 == "y"
    done2 = 1
  else
    input2 == "n"
    done2 = 0
    valid2 = 0
  end

  shoppingList2 << item2

end

#This code simply merges the 2 arrays and removes duplicates
best = (shoppingList + shoppingList2).uniq
puts "This is your list: #{best}"

=begin
The code above can be re-written as:
puts "This is your list:"
puts (shoppingList + shoppingList2).uniq
=end
