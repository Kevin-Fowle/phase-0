# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def get_grade(number)
  if number >= 90 && number <= 100
    return "A"
  elsif number <= 89 && number >= 80
    return "B"
  elsif number <= 79 && number >= 70
    return "C"
  elsif number <= 69 && number >= 60
    return "D"
  else
    return "F"

end
end