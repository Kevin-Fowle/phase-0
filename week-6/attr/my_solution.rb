#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: The input is my name that is defined by the NameData class
# Output: The output is a string that greets myself
# Steps: My name needs to be defined by the first class. Then it has to be transfered over to the second class to be placed inside of the sentence

class NameData
def get_name
  @name="Kevin"
end

end
class Greetings
def initialize
  @name_data=NameData.new
end

def hello
  puts "Hello #{name_data.get_name}! How wonderful to see you today."
end

end


greet=Greetings.new
puts greet.hello








# Reflection
=begin
In release 1, the methods are taking the original data entered for age, name and occupation and changing them in the middle of the program by setting them equal to a different variable. That's why at the end of the program all the information is changed to 28, Taylor and rare coins collector. If the variables would have not been changed the program would have run as 27, Kim and cartographer.

As mentioned above, they are changing them by setting the original class variables to new variables. For instance, the class variable age defined by what is age. Then age is altered on line 27 to  new_age. Age stays 27, but new age can be assigned a new value.



The main changes that have been made on release 2 is the utilization of the attr_reader method. A few lines of code that original defined age have been removed/omitted.

Age is now being defined by the atter_reader method. This creates/writes a defining method for you.

This makes the code look much more clean than it's release one counterpart. It removes a few lines of code and replaces it with a one line defining method. To me, release one reads out a little nicer, but I think just need to get used to using/reading attr methods.

A reader method will allow you to read what is being stored in the variable. So if I used attr_reader :age on a method, I would be able to use the information being stored in age.

A writer method will allow you to write something for the variable. So if I used attr_writer on age, I could overwrite what is being stored in age.

Attr methods allow you to define a method shorthand. Instead of writing def method @age=age. I could just use a attr method to do the exact same thing, and even more.

Attr_accessor is a combination of both reader and writer. You should not use these to "cover your basis". It can lead to your programming having too many variables and you might end up changing something that ruins your program.

I think I just need to get used to seeing them. Defining a method and writing out the variable is like the old fashioned way for me. So seeing some new syntax can take some time getting adjusted to.

=end