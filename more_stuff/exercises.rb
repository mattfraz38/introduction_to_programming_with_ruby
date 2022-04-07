# write a probram that check if the sequence of 
# characters "lab" exists in the following strings

s1 = "laboratory"
s2 = "experiment"
s3 = "Pans Labyrinth"
s4 = "elaborate"
s5 = "polar bear"

def str_include?(pattern, str)
  pattern.match(str.downcase) ? "match" : "no match"
end

puts str_include?(/lab/, s1)	# match
puts str_include?(/lab/, s2)    # no match
puts str_include?(/lab/, s3)    # match
puts str_include?(/lab/, s4)    # match
puts str_include?(/lab/, s5)    # no match

# what will the following program print to the screen? What will it return?
# def execute(&block)
#   block
# end

# execute { puts "Hello from inside the execute method!" } 

# nothing is printed because the block is never activated with .call
# it will return a Proc object

# modify the above code to run properly
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# what is exception handling and what does it solve?
# it is a way to prevent code from breaking a program should
# an error be raised. it is a way to catch the error, do something with
# it, then continue on with the code

# why does the following code give an error when run?
# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# in the method definition it should be &block
# this allows a block to be passes as a parameter
