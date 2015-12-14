
# variable array board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " ", ]

# method to display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# move method
def move(board, position, char="X")
  board[position.to_i - 1] = char
end

# position_taken method
def position_taken?(board, position)
  if board[position.to_i - 1] == " "
    false
    elsif board[position.to_i - 1] == ""
    false
    elsif board[position.to_i - 1] == nil
    false
  else board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    true
  end
end

# valid_move method
def valid_move?(board, position)
  if position_taken?(board, position)
    false
  elsif position.to_i.between?(1,9)
    true
  end
end

# turn method
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    true
    move(board, position)
    display_board(board)
  else
    puts "Please enter 1-9:"
    position = gets.strip
  end
end

