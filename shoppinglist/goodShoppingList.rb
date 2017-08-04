##Syafs shopping list app

puts "\n Welcome to your shopping list."

#captures how big of a list is required
puts "How many items do you want to add?"
listCount = gets.to_i
puts "\n Ok great, hit enter after each item to add it to your list."

#defines the array
shopList = []

#loops until the list conatins the desired number of items
while shopList.length < listCount
  item = gets.chomp
    if item == "done" #allows user to stop adding items early
      puts "\n Your list isnt full but heres what you have so far"
      puts shopList
      break
    end
  shopList << item
  puts "item added"
  puts "\n Your list now has #{shopList.length} items \n Add next item or type 'done' to stop."
end

#Lists out all the items added once the the list haas been filled out.
if shopList.length == listCount
  puts "\n Your list has been created, heres what you've added"
  puts shopList
end
