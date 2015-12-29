def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n------------\n #{board[3]} | #{board[4]} | #{board[5]} \n------------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? board, position
  position = position.to_i - 1
  (0..8).cover?(position) && !position_taken?(board, position)
end

def position_taken? board, position
  !(board[position].nil? || board[position].empty? || board[position] == " ")
end

def move board, position, player="X"
  board[position.to_i - 1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board board
  else
    turn(board)
  end
end
