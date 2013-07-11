# Example of how the program should work:

# How many pieces of cake do you have? 11
# How many people want some cake? 3
# Give each person 3 pieces. There will be 2 additional pieces for you to eat as soon as they leave.

# (You don't need to worry about bad input. Just assume that your user will be nice!)


print "How many pieces of cake do you have? "
# Get the number. to_i converts a string into an integer.
num_cake_pieces = gets.chomp.to_i

print "How many people want some cake? "
# Get the number. Conver it to an integer.
num_wanted = gets.chomp.to_i

extra = num_cake_pieces % num_wanted
each_person = num_cake_pieces / num_wanted

# Print the solution
puts "Give each person #{each_person} pieces. There will be #{extra} additional pieces for you to eat as soon as they leave."
