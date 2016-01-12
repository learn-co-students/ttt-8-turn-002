def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(array, position)
  position = position.to_i-1
  position.between?(0,8) && array[position] == " " || array[position] == ""
end

def move(array, position, value = "X")
  position = position.to_i-1  
    array[position] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  value = "X"
  if valid_move?(board,position)
    move(board,position,value)
    display_board(board)
  else turn(board)
  end
end

