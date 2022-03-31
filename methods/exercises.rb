# a method called greeting that takes a
# name parameter and returns a string
def greeting(name)
  "Hello, #{name}. How are you?"
end

puts greeting("Sally")

# what do the following expressions evaluate to?
# x = 2				# 2
# puts x = 2			# nil
# p name = "Joe"		# "Joe"
# four = "four"			# "four"
# print something = "nothing"	# nil

# what will the following code print?
# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end

# scream("Yippeee")	# nothing is printed 

# edit the above method to print the words
# variable to the screen, what does it return?
# def scream(words)
#   words = words + "!!!!"
#   puts words
# end

# scream("Yippeee")     # nil

# what does the following error tell you?
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# on line 1 in irb a method named calculate_product was called
# this method expected two arguments, but only received one
