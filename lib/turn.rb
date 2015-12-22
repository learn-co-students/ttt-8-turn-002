def valid_move?(board, position = "")
  position = position.to_i
  if position.between?(1, 9)
    !position_taken?(board, position - 1) 
  else
    return false
  end
end
  
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position) 
  if (board[position] == nil) 
    return false
  else 
    !(board[position].strip.empty?)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, char="X")
  position = position.to_i
  if board[position-1] == " "
    board[position-1] = char
  end  
end

def turn(board)
  puts "Please enter 1-9:" 
  input = gets.strip
  until valid_move?(board, input)
    puts "Please enter 1-9:"
    input = gets.strip
  end
  move(board, input)
  display_board(board)
end
  
