def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if (position.to_i.between?(1,9)) && (position_taken?(board, position) == false)
    true
  else (position_taken?(board, position) == true)
    false
  end
end

def position_taken?(board, position)
  if (board[position.to_i - 1] == "X") || (board[position.to_i - 1] == "O")
    return true
  else (board[position.to_i - 1] == " ") || (board[position.to_i - 1] == "") || (board[position.to_i] = nil)
    return false
  end
end

def move(board, player, char = "X")
  board[player.to_i - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  go = gets.strip
  if valid_move?(board, go) == true
    move(board, go)
  else
    turn(board)
  end
  display_board(board)
end








