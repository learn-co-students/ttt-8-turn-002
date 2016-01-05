def display_board(board)
  rule = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts rule
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts rule
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O" 
    true
  else
    false
  end
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0,8) && !position_taken?(board, position)
    true
  end
end

def move(board, position, marker = "X")
  position = position.to_i - 1
  board[position] = marker
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board, input, marker = "X")
    display_board(board)
    turn(board)
  else
  turn(board)
  end
end