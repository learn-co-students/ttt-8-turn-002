def display_board(board)
  sep = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts sep
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts sep
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, num, value = "X")
  board[num.to_i - 1] = value
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0, 8) && !position_taken?(board, position)
    true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  value = "X"
  if valid_move?(board, position)
    move(board, position, value)
    display_board(board)
  else turn(board)
  end
end

