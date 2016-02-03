def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#-------------------------------------------------------
def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end
end
#-----------------------------------------------------
def valid_move?(board, position_string)
  position=position_string.to_i
  if (position < 1 || position > 9) || position_taken?(board, position-1)
    return false
  else
    return true
  end
end
#-----------------------------------------------------
def move(array, input, character="X")
  location = input.to_i
  newloc = location-1
  array[newloc] = character
end
#-----------------------------------------------------
def turn(board)
  invalid = true
  while invalid == true
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
      invalid = false
    end
  end
  move(board, input)
  display_board(board)
end

