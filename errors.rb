# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
# while true
  #  puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# unexpected end-of-input
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword_end
# 5. Where is the error in the code?
# It needs another end
# 6. Why did the interpreter give you this error?
# A while statment requires an end too. You need to close the variable and the while statment

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# south_park has no value
# 5. Why did the interpreter give you this error?
# Typing in south_park on its own will result in the error. It has no value to it and has not method for ruby to use on it.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# undefined method `cartman'
# 3. What additional information does the interpreter provide about this type of error?
# main:Object (NoMethodError)
# 4. Where is the error in the code?
# It is not correct syntax
# 5. Why did the interpreter give you this error?
# you need to define the method and give it an argument

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 69
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# When cartmans_phrase is called with('I hate kyle')
# 5. Why did the interpreter give you this error?
# Cartmans_phrase was given a puts of "I'm not fat...ect" Calling the phrase with I hate kyle when the method has been defined will result in an error.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 #puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# You need to give cartman_says a string to produce when it is called.
# 5. Why did the interpreter give you this error?
# cartman_says needs a string or intiger. It can puts its own argument.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 105 and 109
# 2. What is the type of error message?
# (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# Cartmans_lie needs to have two arguments.
# 5. Why did the interpreter give you this error?
# Cartmans_lie only has one argument. If you add another argument on 109 it would clear the error

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# Mutiplying an intiger by a string
# 5. Why did the interpreter give you this error?
# You can multiply a string by an integer but not the other way around.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# You cannot devide
# 5. Why did the interpreter give you this error?
# Deviding by zero will result in an error in all programming languages.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/ksfowle/Desktop/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# The file is not stored on my computer
# 5. Why did the interpreter give you this error?
# The file is not on my computer so it cannot be used by ruby. If it was, it would fix the error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# The first one was the hardest. I had to shift my mindset to look at these problems differently. I actually kinda liked doing this assignment. Each problem was sorta like an individual puzzle.
# Some of them I got right away. Others I needed plug into a ruby editor to play around with. I had to do some research on the internet too.
# The diagram at the top of the page was very helpful. In the past, I never really understood what any of the errors meant. After doing this exercise I was able to dissect poor code a little easier. As mentioned above, I needed to do some research. For the most part,  I figured them out on my own.
# First of all, I will now understand what all of these error codes actually mean. Going through and seeing examples of what the errors are made it much easier to understand the code itself. I actually feel a little more comfortable with ruby.