# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? A list of numbers in which we need to find the mode.
# What is the output? (i.e. What should the code return?)The code should return the mode of the list that was give as the input
# What are the steps needed to solve the problem?
# create a program that will find the number that finds the most repeted value.
=begin
# 1. Initial Solution
def mode(array)
  counter = Hash.new(0)
  array.each do |x|
    counter[x] += 1
  end

  mode_array = []

counter.each do |n, v|
  if v == counter.values.max
    mode_array << n
    end
  end

  mode_array.sort

end
=end




# 3. Refactored Solution
def mode(mode)
  mode_return = mode.inject({}) { |k, v| k[v] = mode.count(v); k }
  mode_return.select { |k,v| v == mode_return.values.max }.keys
end




# 4. Reflection
=begin
We ended up using arrays and hashes. Using the hash tocompare all of the data was the best idea. Because a hash allows you to store 2 paired values, we could set one value to the number of times an object appeared in the hash and the actual object.

The psudocoding helps out sometimes. I have found that for some of these more complex problems, we ended up using google more than the psudocode. I want to become less reliant on google in the near future.

I think some of the problems came when we needed to turn the psudocode into actual code. We had the right ideas in our initial attempts, but I think we got caught up in a lot of areas. We had to do a fair amount of google to push us in the right direction.

We ended up using an iterators and an if statement to work out the problem Our refactored code took quite a bit of looking around for new ruby methods to use. We found that the inject method would work nicely.


=end