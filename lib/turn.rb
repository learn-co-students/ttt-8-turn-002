def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  location = position.to_i - 1
  if location.between?(0, 8) && !position_taken?(board, location)
    true
  else
    false
  end
end 

def position_taken?(board, location)
  if board[location] == " "
    false
  elsif board[location] == ""
    false
  elsif board[location] == nil
    false
  else
    true
  end
end

board = [" "," "," "," "," "," "," "," "," "]
def move(board, position, character = "X")
  location = position.to_i - 1
  board[location] = character
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.strip

  if !valid_move?(board, move)
    while !valid_move?(board, move)
      puts "Please enter a value thats not taken:"
      move = gets.strip
    end
  else 
    move(board, move)
  end

end