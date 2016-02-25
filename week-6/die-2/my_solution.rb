# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: A list of letters in the form of a data structure
# Output: 1 single letter from the list of letters that was the input
# Steps: Make sure that the list of letters is not empty. Check the length of the list. Select a random letter from said list


# Initial Solution
=begin
class Die
  def initialize(labels)
    @labels = labels
    if labels.length == 0
      raise ArgumentError.new("I think your die is messed up..")
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels.length == 0 ; raise ArgumentError.new("I think your die is messed up..")
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end






# Reflection
=begin
I needed to use a little more brain power on this assignment. The first die class was a little more straight forward. This problem took me a little more time to think about. In the beginning, I think I was over complicating the problem. I took a quick break and realized what I was doing was a little silly.

 Classes can really help you make easy and neat code. The fact that you can use a variable like labels in multiple different defined methods makes things really easy/modifiable.

It's not necessarily new, but I haven't seen the rand method in a while. I had to go over to the ruby docs to see how to use rand on an array. It ended up working out perfectly, thought it took me some time to figure that out.

These two die challenges have shown me that classes can be a very powerful way to code. They make things so much easier, and your code looks so efficient. In 14 lines of code, I was able to make a really cool program that has a good amount of capabilities. I would like to learn more about the attr_ methods. I think I could have used one here, but after some time of trying, I decided I didn't want to go down a rabbit hole.
=end