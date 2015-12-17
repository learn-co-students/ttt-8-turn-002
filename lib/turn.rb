
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " ----------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " ----------- "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if (board[position] == " " || board[position] == "" || board[position] == nil)
    taken = false
  else
    taken = true
  end
end

def valid_move?(board, position)
  input = position.to_i - 1
  input.between?(0, 8)
  if input.between?(0, 8) && !position_taken?(board, input)
    true
  end
end

def move(array, position, value="X")
  array[position.to_i-1]=value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true then
    move(board, position, character = "X")
    display_board(board)
  else turn(board)
    end
  end