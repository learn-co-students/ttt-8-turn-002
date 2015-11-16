require_relative '../lib/turn'


def display_board(board)

  puts " #{board[0]} "  "|" " #{board[1]} " "|"  " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} "  "|" " #{board[4]} " "|"  " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} "  "|" " #{board[7]} " "|"  " #{board[8]} "
  puts "-----------"

end

def valid_move?(board, position)
  position = position.to_i
  !position_taken?(board, position) && position >= 1 && position <= 9
end

def move(board, input, character = "X")
  input = input.to_i
  board[input - 1] = character
  return board
end

def workflow()
end

def position_taken?(board, position)
  position = position.to_i - 1
  !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else 
    turn(board)
  end
  


end


