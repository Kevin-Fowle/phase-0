# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
    current = 1
    (1..number).each do |n|
        current = current*n
    end
    return current
end