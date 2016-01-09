def display_board(board)
  sep = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts sep
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts sep
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position - 1) || !(position.between?(1, 9))
    false
  else
    true
  end
end

def move(board, num, char="X")
  board[num.to_i - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  if valid_move?(board, num)
    move(board, num)
  else
    puts "Number is not valid, please enter 1-9"
    num = gets.strip
  end
  move(board, num)
  display_board(board)
end
