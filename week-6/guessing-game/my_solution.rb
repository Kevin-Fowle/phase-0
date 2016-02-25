# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: The input has to be a guess on a number from the user
# Output: The output will be wether the guess is high,low or correct
# Steps: The user will input a number and the program will return high, low, correct or false


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      return :high
    elsif guess < @answer
      return :low
    elsif guess == @answer
      return :correct
    end
  end

  def solved?()
    if @guess == @answer
      return true
    elsif @guess != @answer
      return false
    end
  end
end
=end

# Refactored Solution
class GuessingGame

 def initialize(answer)
 @answer=answer
 end

def guess(guess)
 @guess=guess
 return :high if @guess > @answer
 return :low if @guess < @answer
 return :correct if @guess == @answer
end

 def solved?
 return true if @guess == @answer
 return false if @guess != @answer
 end

end




# Reflection
=begin

The best real world object I could think of that best describes an instance variable and methods is water (This might not be the best example, but just let me try here). The water inside of a bottle could be added to a different bottle by pouring it in. The water is still in the original bottle, but it can be used in a different bottle.

Instance variables could be used when data needs to be accessed across a vast amount of methods. If you want to store someones age in an instance variable, you could use it across the methods inside of the class.

I had some troubles with this assignment, but like always, I overcomplicated the issue. Flow control can make me overthink the problem. It gets my brain working a little too hard and I start to guess and check vs making rational/thoughtful guesses.

A symbol cannot be changed in ruby. This would cause the values like true, false, high and low to stay on the program. Also, another interesting point is that comparing symbols is much more memory efficient than comparing strings.
=end