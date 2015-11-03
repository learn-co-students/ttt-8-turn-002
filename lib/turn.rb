def turn 
end 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "  
end 

def valid_move?(board, position)
  if position.to_i.between?(1,9) && !position_taken?(board, (position.to_i - 1))
    return true 
  else
    return false
  end 
end 

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == nil || board[position] == " " || board[position] == ""
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true 
  end 
end 


def move(board, position, token = "X")
  board[position.to_i - 1] = token 
end 

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
  turn(board)
  end
  display_board(board)
end 