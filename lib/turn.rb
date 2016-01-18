#Should accept a board as an argument and print out the current state of the board for the user.
def display_board(board=[" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end

#Should accept a board and a position from the user (remember that the user will input a number 1-9 but your board is *really* indexed 0-8) and return true if the position is within the correct range of 1-9 and is currently unoccupied by an X or O token.
#**Hint: While not explicitly required by this lab, you might want to encapsulate the logic to check if a position is occupied in its own method, perhaps `#position_taken?`**
def position_taken?(board, position)
   taken = nil

   if (board[position] ==  " " || board[position] == "" || board[position] == nil)
     taken = false
   else
     taken = true
   end
   taken
end

def valid_move?(board, position)
  if position.to_i.between?(1,9)
    if !position_taken?(board, position.to_i-1)
      true
    end
  end
end


#This method should accept a board, a position from the user (which will be in the 1-9 format), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.
def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  until valid_move?(board, input) == true
      puts "Please enter 1-9:"
      input = gets.strip
    end
  move(board, input)
  display_board (board)
end
