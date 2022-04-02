# what does the .each method in the following program return?
# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end			# it returns the x array: [1, 2, 3, 4, 5]

# write a while loop that takes input from the user
# performs an action and only stops when the user types "STOP"

input = ""

while input != "STOP" do 
  print "Input: "
  input = gets.chomp
  puts "You typed #{input}."
  puts "Type 'STOP' to quit."
end

# write a method that counts down to zero using recursion
def countdown(num)
  return if num < 0
  puts num
  countdown(num - 1)
end
