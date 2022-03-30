# concatenate two name strings with a space
puts "john" + " " + "doe"

# find each digit of a four digit number with
# the modulo and/or division operators
# and store in variables
thousands = 2345 / 1000		# 2
puts thousands

hundreds = (2345 / 100) % 10	# 3
puts hundreds

tens = (2345 / 10) % 10		# 4
puts tens

ones = 2345 % 10		# 5
puts ones

# store movie titles with the year they came out in a hash
# and print the year of each movie
movies = { :"The Shawshank Redemption" => 1994,
	   :"The Godfather" => 1972,
	   :"The Dark Knight" => 2008 }

puts movies[:"The Shawshank Redemption"] # 1994
puts movies[:"The Godfather"]		 # 1972
puts movies[:"The Dark Knight"]		 # 2008

# store movie release years in an array and print each
movie_years = [1994, 1972, 2008]

puts movie_years[0] # 1994
puts movie_years[1] # 1972
puts movie_years[2] # 2008

# output the factorial of numbers 5, 6, 7, 8
five_factorial = 5 * 4 * 3 * 2 * 1 
puts five_factorial # 120

six_factorial = 6 * 5 * 4 * 3 * 2 * 1 
puts six_factorial # 720

seven_factorial = 7 * 6 * 5 * 4 * 3 * 2 * 1 
puts seven_factorial # 5040

eight_factorial = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1 
puts eight_factorial # 40320

# calculate the square of floats and puts the result
puts 3.5 ** 2		# 12.25 
puts 92.53 ** 2		# 8561.8009
puts 1094.013 ** 2 	# 1196864.4441689998

# what does the following error tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
# from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
# Answer: There was an error on line 2 in irb. A ')' character
# was typed and irb expected a '}' character.
# Perhaps during the creation of a hash.
