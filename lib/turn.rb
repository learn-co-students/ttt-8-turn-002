def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1,9) && position_taken?(board,position) == false
    true
  else
    false
end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  else
    true
  end
end

def move(board, position, token = "X")
  position = position.to_i - 1
  board[position] = token
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets
  position = input.to_i
  if position.between?(1,9) && valid_move?(board, input) == true
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end