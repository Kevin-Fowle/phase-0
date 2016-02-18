# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select { |word| word.include? thing_to_find }
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
source.map!{|number| number.is_a?(Integer) ? number + 1 : number}
end

def my_hash_modification_method!(source, thing_to_modify)
source.each {|k, v| source[k] = v + 2 }

end








# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
# .map!
# .is_a
# .each


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# ..map! will go through an array and find the elements that you specify. The ruby docs do a great job at explaining it. It takes a given block for each element and can replace all of the elements that are returned by the block. For my array I used map! as a destructive method to find all of the integers in the array
#.is_a gives you the ability to check to see if what you are looking at is a particular data set. I used it to see if map! was looking at an integer.
#.each has been covered before, but I used it so I will explain it. .each goes over all of the elements in an array. I used it to go over the key and the value and add 2 to each value.



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I got better at using the ruby docs for this assignment. I was able to look up the methods with relative ease. If I didnt understand the method exactly, I would go to google and look up examples. I find that I learn best if I can watch someone else do it.
#
#Also, explaining what I found was a good reiteration(lol) of the content I just searched for. I know we usually do this in the reflections too, but I found that working it as if I were explaining it to someone had a different learning effect on me.
#