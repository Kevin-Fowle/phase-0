
# I worked on this challenge [by myself, with: ].


# Your Solution Below
def valid_triangle?(a, b, c)
  while a > 0 && b >0 && c > 0
    if (a + b) > c && (b + c) > a && (a + c) > b
      return true
    else
      return false
    end
  end
end
