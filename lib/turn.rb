def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"
end

def valid_move?(board, position)
  int = position.to_i
  if int.between?(1,9)
    int -= 1
    position_taken?(board, int)
  else
    false
  end
end

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    false
  elsif board[position] == " " || board[position] == "" || board[position] == nil
    true
  else
    true
  end
end

def move(board, position, token="X")
  board[position.to_i - 1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end