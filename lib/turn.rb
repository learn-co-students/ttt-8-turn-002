board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, location)
  board[location] != " "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9)
    true
      end
  if !position_taken?(board, position.to_i-1)
    true
end
end

def move(board, location, character = "X")
  board[location.to_i-1] = character
  end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
end
  display_board(board)
end

