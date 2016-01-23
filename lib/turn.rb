def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# def valid_move?(board, position)
#   if ((position.to_i >= 0) || (position.to_i <= 8))
#     true
#   else 
#     false
#   end
# end

def move (board, position, character = "X")
  board[(position.to_i - 1)] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp.to_i
  
end

