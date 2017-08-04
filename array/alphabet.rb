alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l",
  "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y"]

=begin
The .push method appends/adds the "z" to the end of the array.
We can include other data types inside the parenthesis e.g. variables.
The short hand of .push is alphabet << "z"
=end
alphabet.push("z")

=begin
The .each is an iterator. It is a loop for arrays.
Iterators are methods that naturally loop over a given set of data and allow you
to operate on each element in the collection.
=end
alphabet.each do |x|
  puts "This letter is #{x}"
end

=begin
The above can be re-written as alphabet.each {|x| puts "This letter is #{x}"}.
=end
