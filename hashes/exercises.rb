# given a hash of family members, with keys as the title and an array of 
# names as the values, use Ruby's built-in select method to gather only 
# immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

new_arr = []
family.select do |k, v| 
  if k == :brothers || k == :sisters
    new_arr << v
  end
end

p new_arr	# [["jane", "jill", "beth"], ["frank", "rob", "david"]]

new_arr.flatten!	
p new_arr	# ["jane", "jill", "beth", "frank", "rob", "david"]

# what is the difference between the merge and merge! methods?
# write a program that uses both and illustrate the differences

# merge will return a new hash containing the values of two hashes
# it will preserve the original first hash that is taking in the second hash

# merge! will return a new hash containing the values of two hashes
# it is destructive and will mutate the original first hash but preserve the second

a = {one: 1, two: 2}
b = {a: 'a', b: 'b'}

a.merge(b)	# {:a=>"a", :b=>"b", :one=>1, :two=>2}
p a		# {one: 1, two: 2}
p b		# {a: 'a', b: 'b'}

a.merge!(b)	# {:a=>"a", :b=>"b", :one=>1, :two=>2}
p a		# {:a=>"a", :b=>"b", :one=>1, :two=>2}
p b		# {a: 'a', b: 'b'}

# both merge and merge! can accept a block and unless specified in the block
# any duplicate keys will be replaced in hash_a with keys in hash_b

a = {one: 1, two: 2}
b = {a: 'a', b: 'b', one: 'c'}
a.merge(b) { |key, oldval, newval| newval }	# {:a=>"a", :b=>"b", :one=>"c", :two=>2}

# using some of Ruby's built-in Hash methods, write a program that loops through a hash and
# prints all of the keys then write a program that does the same thing except printing the 
# values and finally, write a program that prints both.

family = {:father=>"joe", :mother=>"jan", :brother=>"adam", :sister=> "megan"}

keys = family.keys
p keys			# [:father, :mother, :brother, :sister]

values = family.values
p values		# ["joe", "jan", "adam", "megan"]

family.each { |key, value| puts "#{key}: #{value}" }
# father: joe
# mother: jan
# brother: adam
# sister: megan

# given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]		# 'Bob'

# what method can be used to find out if a hash contains a specific value?
family = {:father=>"joe", :mother=>"jan", :brother=>"adam", :sister=> "megan"}

puts family.value?("megan")	# true
puts family.value?("steve")	# false

# givnen the following code what is the difference between the two hashes?
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# the x key of my_hash is a symbol
# the x value of my_hash2 is a string value located in the x variable

# if you see the following error what do you suspect the problem is?
# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

# B, arrays know have utilize keys therefore they don't have a key method
