# ask for input
# get input
# if input is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end
#boiler room, frisky radio.com
# show the board


def display_board(board)
         puts   " #{board[0]} | #{board[1]} | #{board[2]} "
         puts   "-----------"
         puts   " #{board[3]} | #{board[4]} | #{board[5]} "
         puts   "-----------"
         puts   " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move? (board, position)
    position.to_i.between?(1,9) && !position_taken?(board, position.to_i - 1)    
   
end


def move(board, position, value = "X")
    board[position.to_i - 1] = value
end


def position_taken? (board, position)
    board[position] != " " && board[position] != ""
     
end

def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip
  
  if valid_move?(board, choice)
     move(board, choice)
     display_board(board)
  else 
    turn(board)
  end
end

