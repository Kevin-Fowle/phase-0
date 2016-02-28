# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [8] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #We need to create a random number and a random letter. This can be done by storing the letters needed inside of a data structure and calling a random number from 1-100

# Check the called column for the number called.
# Next, we will have to check the gameboard to see if the random number matches the number on the board

# If the number is in the column, replace with an 'x'
  #Possibly use a statement to set up two different senarios if the number is there replace it with an x, if it's not.. do nothing

# Display a column to the console
  # This steps will require the code to be called outside of the program.

# Display the board to the console (prettily)
  #Not sure exactly what to do here... will do some google research to find an idead. pretty print??

# Initial Solution
=begin
class BingoBoard
require "pp"
  def initialize(board)
    @game_board = board
  end

def display
@game_board
end


  def call
    @number = rand(1..100)
    @letter = ['B','I','N','G','O'].sample
    p "[#@letter,#@number]"
  end

  def check
    @game_board.each do |num|
    if @letter == "B"
      if num[0] == @number
        num[0]="X"
      else
        num = @number
  end
  end

     if @letter == "I"
      if num[1] == @number
        num[1]="X"
      else
        num = @number
  end
  end

     if @letter == "N"
      if num[2] == @number
        num[2]="X"
      else
        num = @number
  end
  end

     if @letter == "G"
      if num[3] == @number
        num[3]="X"
      else
        num = @number
  end
  end

     if @letter == "O"
      if num[4] == @number
        num[4]="X"
      else
        num = @number
  end
  end
end

end
end
=end


# Refactored Solution

class BingoBoard
require "pp"
  def initialize(board)
    @game_board = board
  end

  def display
  @game_board
  end


  def call
    @number = rand(1..100)
    @letter = ['B','I','N','G','O'].sample
    p "[#@letter,#@number]"
  end

  def check
    @game_board.each do |num|
    if @letter == "B"
      if num[0] == @number then num[0]="X" else num = @number
      end
  end

     if @letter == "I"
       if num[1] == @number then num[1]="X" else num = @number
      end
  end

     if @letter == "N"
       if num[2] == @number then num[2]="X" else num = @number
      end
  end

     if @letter == "G"
      if num[3] == @number then num[3]="X" else num = @number
      end
  end

     if @letter == "O"
       if num[4] == @number then num[4]="X" else num = @number
      end
  end
end


end
end














#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]



new_game = BingoBoard.new(board)
new_game.call
new_game.check
pp new_game.display

#Reflection
=begin
After getting some more psudocoding practice, I think I have gotten better. When I first started psudocoding, I would use way too many programming terms and complicate the verbiage. I now understand how to get the message across without using too much programming jargon, but creating a simple and easy to read outline. I also developed a new habit of frequently updating my outline. My psudocode changed a good amount throughout the assignment.

There are many different pieces of data that need to be accessed outside of the native methods. Using a class allowed me to create data structures inside of the methods and access them in different methods while working in the class.

Nested arrays still confuse me a little bit, but I think I managed with this assignment. Compared to the nested array pairing assignment earlier on in the week, this assignment was a little easier for me.

I used an each loop. If the loop didn't find the number in the nested array it wouldn't do anything. If the loop found the number in the nested data structure..it would replace it with an 'X'.

One of the coolest things I learned in this assignment was kinda silly. Pretty printer is a an alternative for printing objects out in ruby. It formats arrays and hashes differently. So when data structures to the console, the show up all pretty(lol). I know this sounds dumb, but it was one of those things that revitalized my curiosity for quirky programing things. At the start of your program you need to require "pp". When you are calling your method at the end of the program, you use pp instead of p.

If the data stored in the variable needed to be accessed by other methods, I made it an instance variable. If it was only needed by the native method, I left it as a local variable.

I really couldn't find anything to refactor as I would have liked. I cleaned up my if/else statements. I think they are still kinda an eyesore, but they get the job done. Much better than the original.
=end