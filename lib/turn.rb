def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} \n-------------\n #{board[3]} | #{board[4]} | #{board[5]} \n-------------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
  
  if (position_taken?(board, position) ==false) && position.between?(1,9)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position.to_i
  if board[position -1] == " " || board[position -1] == "" || board[position -1] == nil
    return false
  else
    return true
  end
end


def move(board, position, token = "X")
  position = position.to_i
  board[position -1] = token
  return board
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  #input =  input.to_i
  if valid_move?(board, input)
    move(board, input, token="X")
    display_board(board)
  else
    turn(board)
  end
  
end