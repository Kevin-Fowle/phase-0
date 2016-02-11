# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: numbers and strings
# Output: sum of numbers and a sentence
# Steps to solve the problem.


# 1. total initial solution
 def total (arr)
  sum=0
  arr.each do |n|
    sum = sum+n
      end
      return sum
    end


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: strings
# Output: Sentence
# Steps to solve the problem.



# 5. sentence_maker initial solution
def sentence_maker(arr)
    sum = arr[0]

    arr[1..-1].each do |word|
        sum = sum+" "+word.to_s
    end
    sum = sum.capitalize+"."
    return sum
end


# 6. sentence_maker refactored solution
