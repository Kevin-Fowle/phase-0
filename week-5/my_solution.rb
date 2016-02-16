# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#The input is an array, specified minimum size, and optional value to fill aditional slots
# What is the output? (i.e. What should the code return?)
# It should return a new array with same elements as the previous array plus additional elements up to the specified number. additional elements will be nill or optional value. The pad! will return a new modified array with the values.
# What are the steps needed to solve the problem?
# use push to add slots to the array. min size. - array.length. content of optional value will be pushed. Modified array will be stored to variable. pad! will replace the original array.
=begin
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
   new_array = array
  new_slots = min_size - array.length
  n = 1
  while n <= new_slots
    new_array.push(value)
    n += 1
  end
  new_array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
  new_slots = min_size - array.length
  n = 1
  while n <= new_slots
    new_array.push(value)
    n += 1
  end
  new_array
end
=end

# 3. Refactored Solution
def pad!(array, min_size, value = nil)
  array.fill(array, min_size,value=nil)

end

def pad(array, min_size, value = nil)
   new_array = Array.new(array)
  new_slots = min_size - array.length
  n = 1
  while n <= new_slots
    new_array << value
    n += 1
  end
  new_array
end



# 4. Reflection
=begin
I think we broke down the problem into some easy steps to identify. We had a nice rhythm going right from the start, and we were able to mentally solve the problem with psudocode.

I had some difficulties, it defiantly made it a little easier to break it down verbally. I think with some more practice, ill be able to do it a little more efficiently. I think some of the difficulties came down to just remembering while trying to read your verbal code.

Our initial solution ended up with an infinite loop. We forgot to n+=1 so it looped forever. After that little mishap we got the destructive problem down. The non-destructive took a little more time because we had new_array=Array.new() when we needed to put array inside ().

We found the fill method that I used on the destructive method. For the non-destructive I ended up just changing out .push for << (just for fun)

I think our solution is pretty readable. Our original solutions read out quite nicely. The one with .fill requires a little more ruby knowledge to understand, but it's super clean.

Destructive means that the original storage device will be overridden with new data. It will keep the same name, but have different data within itself. Non-destructive means that a new array will be formed with the new data. The original storage device will stay untouched.

=end