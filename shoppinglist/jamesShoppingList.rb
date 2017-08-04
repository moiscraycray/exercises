=begin

James Marotta

For this problem, the user needs to create new shopping list help them out
=end

# start with intro method
def intro

  # greet the customer
  puts
  puts
  puts "Welcome to shopping list Pro!"
  puts "We are here to make your life amazing"
  puts "And definitely not to take over the world."
  puts
  puts
  puts "Okay lets get started"
  puts "The controls are as follows type:"
  puts "start, print, finish, or help for help"


# defines my array
  list = []
=begin
While loop to continuously ask the user for a choice.
the Intro code will keep running while runner is equal to 1.
=end
  runner = 1
  while runner == 1
    choice = gets.chomp.downcase

 # run different methods depending on choice.
    case choice
    when "start"
      add_program(list)
    when "print"
      print_program(list)
    when "finish"
      finish_program(list)
      #print with a nice message and set runner to 2 to quit
      runner == 2
    when "help"
      send_help
    else
      puts "start, print, finish, or help for help"
    end
  end
end



# this method handles adding to the list.
def add_program(list)
  #variable to control if the add will run
  listrun = 1


  while listrun == 1
    puts "List Item?      \"b\" to go back"
    new_item = gets.chomp.capitalize

    # when they type b it gets capitalized and you return to main menu
    if new_item == "B"
      puts "Back to Main Menu"
      puts "start, print, finish, or help for help"
      # send my updated list back to intro
      return list
      listrun = 2
    else
      # if they don't type b, then add it to the list.
      list.push(new_item)
    end
  end
end


# prints the shopping list to the screen
def print_program(list)
  puts "Here is your list"
  puts
  list.each { |x| puts x }
  puts
  puts "start, print, finish, or help for help"
end

# print to the screen to help the user with controls
def send_help
  puts
  puts "Don't worry I'm here to help"
  puts
  puts
  puts "start    to add to your current list"
  puts "print    to see current list"
  puts "Finish   Will quit the program and you can also print a copy"
  puts "or you can return here with    help "
  puts
end

def finish_program(list)
=begin
this quits the main program, and gives the user an option
to print to file
=end

  puts
  puts "okay are you sure? y/n"
  escape = gets.chomp.downcase
  # double check they want to quit
  case escape
  when "y"
    # if they do want to quit, print their list to screen and give option to file

    puts
    puts "Okay... fine, thankyou!"
    # run our prints method to print to screen
    print_program(list)
    puts

    # printing to file
    puts "Want a Saved copy? y/n"
    hard = gets.chomp.downcase
    # yes printing to file
    case hard
    when "y"
      puts "okay, making shopping list.txt"
      File.open("shoppingList.txt", "w+" ) {|f| f.puts(list)}
      runner = 2
      exit
    # not printing to file
    when "n"
      puts
      puts "Okay... fine, thankyou!"
      puts
      runner = 2
      exit
    end

    # not sure they want to quit
  when "n"
    puts "Did you forget something?"
    puts "Don't worry you can type start to add more"
  end
end










intro
