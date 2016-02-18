# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: A random integer will be placed into the program and will role a virtual die.
# Output: A number between 1-6 will be shown on the screen. If the number is <6 or >1 an error will occur.
# Steps:


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    @sides=sides
    if sides < 1
        raise ArgumentError.new("What kinda die are you playing with?")
    end
  end

  def sides
    @sides
  end

  def roll
  rand(1..@sides)
  end
end
=end


# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides=sides
    if sides < 1
        raise ArgumentError.new("What kinda die are you playing with?")
    end
  end

 attr_reader:sides

  def roll
  rand(1..@sides)
  end
end

=begin

An argument error can be used in code when the program would not run properly. In this particular situation, there wouldn't be a die rolled where the outcome would be less than one(those die might exist..for some odd reason.. but not in this challenge). So we can set an argument error to be used if the integer received is less than one. This lets the user know that the program failed.

I used attr_reader. This creates a writer method. In my program I used attr_reader:sides to pull the data from def initialize(sides). It's just a fancier way to write a method.

A ruby class is how you can create objects that are instances of the class. Classes allow you to makes large groups of objects based on the methods that are in that class.

You could use a Class if you are making a lot of objects. A class is just a way of organizing and producing objects with similar attributes and methods.

A local variable is only visible in its local scope. If a variable is defined in a method, it is only accessible in that particular method. An instance variable is visible within the class it was made.

Instance variables can be used from method to method as long as its within the class. They cannot be accessed outside of the class they were made.


=end





# 4. Reflection