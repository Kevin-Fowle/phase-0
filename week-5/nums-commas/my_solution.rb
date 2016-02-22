# Numbers to Commas Solo Challenge

# I spent [5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An random intiger without proper comma placement
# What is the output? (i.e. What should the code return?)The code should return a number with correct comma placement.
# What are the steps needed to solve the problem? First thought(If we can convert the number into a string we can iterate over the string based on the strings.length. We can then write a method which takes all of the comma placment into account)


# 1. Initial Solution

def separate_comma(number)
num=number.to_s
commas_needed =  num.length / 4
remainder = num.length % 3

if commas_needed < 1
  return num
elsif num.length <= 6
  return num.insert(-4,",")
elsif commas_needed == 2
  num.insert(-4,',')
  num.insert(-8,',')
return num
elsif commas_needed == 1 && remainder == 1
  num.insert(-4,',')
  num.insert(-8,',')

end

end





# 3. Reflection
=begin
I broke down the problem by identifying a few of the keys to success. I realized that there was a comma every -4 placement on a string. I had tried hacking around with the code until I found something. To be honest, It was a good amount of trial an error.

I ended up following only some of my psudocode. When I wrote it, I had a few ideas, but I was not certain if they would work. My original thoughts kinda shifted around as I played around with the code.

The goal of this challenge for me was to not use google. I wanted to try and use only my knowledge and some of the books. The code for the solution is a little hacky, but I couldn't figure out how to iterate the exact amount of spaces required.

For my original solution, I didn't use any iterations. I didn't want to use google too much, but the solution I came up with uses if/elsif statements. The goal of this assignment for me was to not use any outside resources.

I plan on going in for some more study sessions during the course of the next week to help me out with problems like this. I think I have the right ideas, but it gets a little problematic when putting those ideas into practice.


=end
