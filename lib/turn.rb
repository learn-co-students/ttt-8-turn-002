def turn(board)
  puts "Please enter 1-9:"
  position = gets(STDIN).strip

  if valid_move?(board, position)
    move(board, position)
  else
    until valid_move?(board, position)
      puts "Invalid input. Please enter 1-9:"
      position = gets(STDIN).strip
    end
  end

  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, position, char="X")
  board[position.to_i - 1] = char
end

def valid_move?(board, position)
  !position_taken?(board, position.to_i) && valid_position?(board, position.to_i)
end

def position_taken?(board, position)
  !(board[position - 1].nil? || board[position - 1].strip == "")
end

def valid_position?(board, position)
  position.between?(1, board.length)
end
