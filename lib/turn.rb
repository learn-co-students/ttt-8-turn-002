# Displays the Tic Tac Toe Board in a 3x3 grid
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Makes move by changing the character at the position
def move(board, position, character="X")
  board[position.to_i - 1] = character
end

# "X" and "O" are occupied/true. Single spaces, empty strings and nil are unoccupied/false.
def position_taken?(board, position)
  character = board[position]
  if character == " " || character == "" || character == nil
    return false
  elsif character == "X" || character == "O"
    return true
  end
end

# Checks if the move is valid by checking whether the position is out of range and if the space is occupied
def valid_move?(board, position)
  position = position.to_i - 1

  if position < 0 || position > 8 || position_taken?(board, position) == true
    return false
  elsif position_taken?(board, position) == false
    return true
  end
end

# Loops valid_move? until it is true, then makes the move and displays the board
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  until valid_move?(board,input) == true
    puts "Please enter a number 1-9:"
    input = gets.strip
  end

  move(board, input)
  display_board(board)
end
