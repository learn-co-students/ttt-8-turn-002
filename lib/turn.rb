def display_board(board)
  puts "
 #{board[0]} | #{board[1]} | #{board[2]} /n
-----------/n
 #{board[3]} | #{board[4]} | #{board[5]} /n
-----------/n
 #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1, 9) && position_taken?(board, position) == false
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  index = position.to_i - 1
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def move(board, position, token = "X")
  if valid_move?(board, position)
    board[position.to_i - 1] = token
  else
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets
  until move(board, index) do
    puts "Wrong input -- Please enter 1-9:"
    index = gets
  end
display_board(board)
end