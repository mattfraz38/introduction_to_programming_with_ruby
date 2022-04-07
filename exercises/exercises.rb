# Use the each method of Array to iterate over
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |i| puts i }

# Same as above, but only print out values greater than 5.

arr.each { |i| puts i if i > 5 }

# Now, using the same array from #2, use the select method to 
# extract all odd numbers into a new array.

arr.select { |i| i.odd? }
arr.select { |i| i % 2 != 0 }

# Append 11 to the end of the original array. Prepend 0 to the beginning.

arr.push(11)
# or arr << 11

arr.unshift(0)

# Get rid of 11. And append a 3.
arr.delete(11) # or arr.pop

arr.push(3) # or arr << 3

# Get rid of duplicates without specifically removing any one value.

arr.uniq!

# What's the major difference between an Array and a Hash?

# an array is an ordered collection which allows duplicate values
# a hash is an unordered (although from ruby 1.9 ordered) collection of 
# key-value pairs

# Create a Hash, with one key-value pair, using both Ruby syntax styles.

hash_1 = {:name => "sally", :age => 23}
hash_2 = {name: "paul", age: 45}

# Suppose you have a hash:
h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

puts h[:b]
h[:e] = 5
h.delete_if { |k, v| v < 3.5 }

# Can hash values be arrays? Can you have an array of hashes? (give examples)

# yes
# my_hash = { family: ["mom", "dad", "brother", "sister] }

# Given the following data structures, write a program that copies the 
# information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# Using the hash you created from the previous exercise, demonstrate how you 
# would access Joe's email and Sally's phone number.
contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# Programmatically loop or iterate over the contacts
# populate the associated data from the contact_data array
# Note that this exercise is only concerned with dealing with 1 entry in 
# the contacts hash, like this:
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end


# Use Ruby's Array method delete_if and String method start_with? to delete all 
# of the strings that begin with an "s" in the following array.
# Then recreate the arr and get rid of all of the strings that start with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |i| i.start_with?('s') }

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |i| i.start_with?('s', 'w') }

# Given the following array turn into a new array that consists of strings 
# containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
# Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map! { |i| i.split(' ') }.flatten!

# What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# "These hashes are the same!"
