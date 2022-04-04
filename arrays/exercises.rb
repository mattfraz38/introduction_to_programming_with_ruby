# given the provided array and number
# write a program that checks if the number
# appears in the array
arr = [1, 3, 5, 7, 9, 11]
number = 3

def is_present?(array, num)
  array.each do |i|
    if i == num
      puts true
    end
  end
end

is_present?(arr, number)	#  true

# or

puts arr.include?(number)	# true

# what will the following return?
# what is the value of arr after each?
# 1. arr = ["b", "a"]
#    arr = arr.product(Array(1..3))	# arr = [["b", 1], ["b", 2], ["b", 3], 
					#	  ["a", 1], ["a", 2], ["a", 3]]
#    arr.first.delete(arr.first.last)	# 1 arr = [["b"], ["b", 2], ["b", 3],  
                                        #     	   ["a", 1], ["a", 2], ["a", 3]]

# 2. arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])	# [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
#    arr.first.delete(arr.first.last)	# [1, 2, 3] arr = [["b"], ["a", [1, 2, 3]]]

# how do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[-1][0]
puts arr.last.first

# what does each method return in the following example?
# arr = [15, 7, 18, 5, 12, 8, 5, 1]
# 1. arr.index(5)	# 3
# 2. arr.index[5]	# NoMethodError: undefined method [] for Enumerator
# 3. arr[5]		# 8

# what is the value of a, b, and c in the following program?
# string = "Welcome to America!"
# a = string[6]		# "e" 
# b = string[11]	# "A"
# c = string[19]	# nil

# what does the error for the following code mean?
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# on line two of irb you are accessing the array index with a string
# the compiler expects an integer.
# change names['margaret'] to names[-1] = 'jody'

# use the each_with_index method to iterate through an array 
# it should print each index and the value
arr = %w(a b c d)
arr.each_with_index { |val, idx| puts "#{idx}: #{val}" }

# write a program that iterates over an array and builds a new array
# that is the result of incrementing each value in the original array
# by the value of 2
# there should be two arrays at the end of the program, the original
# and the new array
nums = [1, 2, 3, 4, 5]
plus_two = nums.map { |i| i + 1 }
p nums
p plus_two
