def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# --------------------------------------------------------------------------
# code your move method here!
def move(board, position, player = 'X')
  index = position.to_i
  board[index - 1] = player
  return board
end

# --------------------------------------------------------------------------
# code your #valid_move? method here
def valid_move?(board, position)
  index = position.to_i - 1
  if position.to_i.between?(1, 9) && position_taken?(board, index) == false
    return true
  else
    return nil
  end
end

# --------------------------------------------------------------------------
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

# --------------------------------------------------------------------------
# code your #turn method here

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  while true
    if input.to_i.between?(1, 9)
      move(board, input)
      valid_move?(board, input)
      return display_board(board)
    else
      puts "Please enter 1-9:"
      input = gets.chomp.to_i
    end
  end
end





