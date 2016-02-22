=begin

psudocode: I need to aggregate a list of names into an list. Once I get all of the names into the list, I will separate the list of names into smaller groups. It is also important to check that the group size is no smaller than 3, but no larger than 5.

=end

name_array= ["Adam Pinsky", "Afaan Naqvi", "Alana Farkas", "Andrew Crowley", "Andrew Vathanakamsang", "Anna Lansfjord", "Benjamin Heidebrink", "Blair White", "Brad Lidgren", "Brain Donahue", "Brittney Baxton", "Camilia Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shaprio", "David Kaiser", "David Ramirez", "Daniel Deutsch", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Gregoru Toprak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jaclyn Feminella", "Jasmeet Chatrath", "Jason Allen", "Jon Norstrom", "Jonathan Nicolas", "Joseph Yoo", "Joshua Lugo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Andrew Larson", "Leo Kukhar", "Li-Lian Lu", "Erica Lloyd", "Charlotte Manetta", "Marita Deery", "Michael Verthein", "Milorad Felbapov", "Brian Mosley", "Nick Russo", "Noah Schutte", "Oscar Delgadillo", "James Robinson", "Ryan Dempsey", "Ryan Wilkins", "Sami Zhang", "Saralis Rivera", "Sean Norton", "Shyh Hwang", "Sydney Rossman-Reich", "Theo Paul", "Tomasz Sok", "Wesley El-Amin"]

def group(i,x)
i.each_slice( x ).to_a


end


=begin

I think the most interesting part for me was how easy it was to do this. The rules indicated that this challenge was up to the individual for how they wanted to do it. I wanted to find the simplest method to break down the array into smaller grouped arrays. My solution takes an array and a number to group the arrays. I found it very fascinating that I could solve the problem with such little code.

A little, I think I need more time to continually see the syntax. I am getting better at writing psudocode and understanding what is possible vs. what isnt.

I could have done better by making the solution a little more friendly. I could have made a method that would have randomized the groupings. I could have made the array sort in alphabetical order or on length of name.

I decided to store them in an array. I could have used a hash, but the method I wanted to build required a set of data. It didn't need set keys with values.

My solution is already factored down a good amount. I learned a good amount about the slice method. After looking around on the ruby docs for a little bit, I found that it would be the best choice to solve the problem.


=end