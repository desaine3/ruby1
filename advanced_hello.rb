# Two examples of how this program should work:

# What is your name? tom
# What is your home town? oxford
# What country is that in? uk 
# Hello Tom! You are from Oxford, UK.

# What is your name? boRIS
# What is your home town? Minsk
# What country is that in? Belarus
# Hello Boris! Your are from Minsk, BELARUS.


# Get their name
print "What is your name? "
name = gets.chomp
name = name.capitalize

# Get their home town
print "What is your home town? "
home_town = gets.chomp
home_town = home_town.capitalize

# Get thier country
print "What country is that in? "
country = gets.chomp
country = country.upcase

# Say hello
puts "Hello #{name}! You are from #{home_town}, #{country}."