# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]



# attempts:
# ============================================================
#p array [4][1]
#p array [3][1]
#p array [1][1][1]
#p array [1][2][1]
#p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {
  outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data [:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! { |element|
  if element.is_a?(Array)
    element.map! {|sub_element| sub_element += 5}
  else
    element+=5
  end
}

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
  startup_names.map! {|level_1|
    if level_1.is_a?(Array)
        level_1.map! {|level_2|
        if level_2.is_a?(Array)
          level_2.map!{|level_3| level_3 << "ly"}
        else level_2 << "ly"
        end
       }
    else level_1 << "ly"
    end

    }

p startup_names

#Refactor
startup_names.map! {|element|
  unless element.is_a?(Array)
    element << "ly"
  else element.map!{|sub_element|
      unless sub_element.is_a?(Array)
        sub_element << "ly"
      else sub_element.map!{|sub_sub| sub_sub << "ly"}
      end
    }
  end
}

=begin

My pair had some amazing analogy's for going over nested data structures.  She said that it was like going through a house. You can look at each nested data structure as a room in the house...brilliant.

We ended up iterating with .map and some if/else statements. If the iteration reached a data structure it would map over that one too. Else it would continue to iterate over the current data structure.

We didn't come up with anything new, but I was not as familair with nesting if/else statements. It took some extra brain power for me to grasp the flow control, but It was very interesting to see how powerful it can be.

=end