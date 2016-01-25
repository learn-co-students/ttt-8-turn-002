board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  print " #{board[0]} "
  print "|"
  print " #{board[1]} "
  print "|"
  puts " #{board[2]} "
  puts "-----------"
  print " #{board[3]} "
  print "|"
  print " #{board[4]} "
  print "|"
  puts " #{board[5]} "
  puts "-----------"
  print " #{board[6]} "
  print "|"
  print " #{board[7]} "
  print "|"
  puts " #{board[8]} "
  puts " "
end

def valid_move?(board, position)
  position = position.to_i
  position = position - 1
  if position_taken?(board, position) == false && position.between?(0, 8)
    true
  else
    false
  end
end

def position_taken?(board, position)
 if board[position] == " "
    false
    elsif board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def move(board, position, value = "X")
  position = position.to_i
  position = position - 1
  board[position] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, value = "X")
      display_board(board)
  else
    puts "Invalid input, please input valid input"
    turn(board)
end
end

