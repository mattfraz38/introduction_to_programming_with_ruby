# ask the user for their name and print out a greeting with it
puts "What's your first name?"
first_name = gets.chomp
puts "Greetings, #{first_name}!"

# ask the user how old they are then tell them
# how old they will be in 10, 20, 30, and 40 years
puts "How old are you?"
age = gets.chomp.to_i

puts "In 10 years you will be: #{age + 10}"
puts "In 20 years you will be: #{age + 20}"
puts "In 30 years you will be: #{age + 30}"
puts "In 40 years you will be: #{age + 40}"

# print the users name 10 times
10.times { puts first_name }

# get the users last name and print the users full name
puts "What's your last name?"
last_name = gets.chomp
puts "#{first_name} #{last_name}"

# based on the following two code snippets what is the value of x?
# x = 0
# 3.times do
#   x += 1
# end
# puts x	# x is 3

# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x	# error: undefined local variable or method x


