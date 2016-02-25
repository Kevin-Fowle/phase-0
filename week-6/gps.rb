# Your Names
# 1)Kevin Fowle
# 2)Brian Donahue

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  servings = num_of_ingredients / serving_size
  output = "Calculations complete: Make #{servings} of #{item_to_make}"

  return output if remaining_ingredients == 0
  return output + ", you have #{remaining_ingredients} leftover ingredients."
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
I learned that making code readable can be very tedious, but rewarding. Looking at this code to begin with was way confusing. Going though and fixing some of it's outlying issues was actually kinda fun.

I didn't learn any new methods, but we used a few that I haven't used nearly as much. .has_key? was one of the syntax I haven't seen in a while. It was nice to use it as a refresher.

This assignment showed me why hashes can be so useful. It's not anything new, but using a hash in this program was a nice reminder on how useful they can be.

I know it sounds kinda dorky, but this assignment showed me how powerful ruby can be. It has been really interesting working with this language and this program got me all giddy about programming again. I am really excited to see what ruby can really do over the coming weeks.



=end