def display_board (board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos)
  if pos.to_i.between?(1, board.length) && !position_taken?(board, pos.to_i-1)
    true
  end
end

def position_taken?(board, pos)
  if board[pos] == "X" || board[pos] == "O" #i felt this was a better way to address edge case scenarios than what the readme suggested
    true
  end
end

def move(board, pos, char="X")
  board[pos.to_i-1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  while !valid_move?(board, position)
    puts "Input invalid. Please select an empty sapce by inputting an integer between 1 and 9"
    position = gets.strip
  end
  move(board, position)
  display_board(board)
end