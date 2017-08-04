=begin
This code shows a how a simple array works.
Alcohol is an array within another array (shoppingList).
Alcohol is also an element (arrays can hold any data types)
=end

shoppingList = [
  "chips",
  "coke",
  "water",
  "Brie",
  "cheddar",
  alcohol = [
    "Tooheys Old",
    "Rum",
    "Gin",
    "Tequila",
    "whiskey"
  ]
]

#arrays start counting from 0
chosenCheese = shoppingList[4]

=begin
We want to count the number of elements in the array but we don't want to
include the array 'alcohol', we only want to include elements from both arrays.
Therefore, we subtract '1' to show the correct number
=end
listCount = shoppingList.length + alcohol.length - 1

puts "My chosen cheese is #{chosenCheese}"

puts "List has #{listCount} items in it."
