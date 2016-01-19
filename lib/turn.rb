def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, position, value = "X")
  board[position.to_i - 1] = value
end


def valid_move?(board, position)
  if position.to_i < 1 || position.to_i > 9
    false
  elsif position_taken?(board, position.to_i)
    false
  else
    true
  end
end


def position_taken?(board, position)
  spot = board[position - 1]
  if spot == " " || spot == nil || spot == ""
    false
  elsif spot == "X" || spot == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.chomp

  if valid_move?(board, input)
    move(board, input)
  else 
    turn(board)
  end
  display_board(board)
end