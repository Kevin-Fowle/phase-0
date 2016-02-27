# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number for a credit card
# Output: True or False
# Steps:
# 1) Check if the credit card is 16 digits.
# 2) Double every other digits starting from the second last digit
    # - Working backward
# 3) Sum all of the untouched numbers and doubled digits.
#     - Break up double digits into single digits
# 4) If the total is multiple of 10 it's a valid credit card. If not, it is invalid.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard

def initialize (number)
    @num = number
    @length = number.to_s.length
    raise ArgumentError.new("false") if @length > 16
    raise ArgumentError.new("false") if @length < 16
end

def check_card
    digits = @num.to_s.split("").reverse
    digits.map! {|string| string.to_i}
    doubled_digits = digits.map.with_index {|x,y|
    if y % 2 == 0
      x
    else
      x*2
    end
    }

  sum = doubled_digits.join("").split("").map!{|string_number| string_number.to_i}.reverse


    total = sum.inject(0){|sum,x| sum + x }

    if total % 10 == 0
        return true
    else
        return false
    end
end
end
=end
# Refactored Solution

class CreditCard

def initialize (number)
    @num = number
    raise ArgumentError.new("false") unless @num.to_s.length == 16
end

def check_card
    digits = @num.to_s.split("").reverse.map! {|string| string.to_i}
    doubled_digits = digits.map.with_index {|x,y|
    if y % 2 == 0
      x
    else
      x*2
    end
    }

  sum = doubled_digits.join.chars.map!{|string_number| string_number.to_i}


    total = sum.inject(:+)

    if total % 10 == 0
        return true
    else
        return false
    end
end
end



# Reflection
=begin
We had some silly errors that caused our code not to work properly. In our initialize method we accidentally had two ends which didn't allow our program to run. We kept getting an error about a private method, and we had to call in some outside help to get an extra pair of eyes on our code. We also got a little caught up on the logic of the problem. Sami and I had the right ideas, but we had some small errors which held us back.

We looked into some new methods to try and refactor our code. sum.inject(:+) is one of the only new methods I saw. This method will take the sum of the numbers in an array. Neat stuff

I learned a ton about classes and instance variables. There wasn't really any syntax I hadn't seen, but putting some of the things we had learned about classes and variables into action was challenging. This challenge took a good amount of time for my pair and I, but I learned a lot about ruby today.
=end