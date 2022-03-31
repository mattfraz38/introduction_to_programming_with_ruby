# do the following expressions return true or false?
(32 * 4) >= 129		# false
false != !true		# false
true == 4		# false
false == (847 == '874')	# true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true

# write a method that takes a string
# it should return the string in all caps
# only do this if the string is longer than 10 characters

def caps_10(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps_10("hello!")		# "hello"		=> nil
puts caps_10("hello everyone!")	# "HELLO EVERYONE!"	=> nil

# get a number from the user between 0 and 100
# report back whether the number is between
# 0 and 50, 51 and 100, or above 100
print "Type a number: "
num = gets.chomp.to_i

if num <= 50
  puts "Your number is between 0 and 50"
elsif num > 50 && num <=100
  puts "Your number is between 51 and 100"
else
  puts "Your number is over 100!"
end

# what will each block print?
'4' == 4 ? puts("TRUE") : puts("FALSE")	# "FALSE"

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end					# "Did you get it right?"

y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end					# "Alright now!"

# why is the following error message received with the provided code?
# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end

# equal_to_four(5) 

# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

# there is a missing end keyword for the if statement

# does the following expressions return true, false, or raise an error?
# (32 * 4) >= "129"	# ArgumentError: comparison of Integer with String
# 847 == '874'		# false
# '847' < '846'		# false
# '847' > '846'		# true
# '847' > '8478'	# false
# '847' < '8478'	# true
