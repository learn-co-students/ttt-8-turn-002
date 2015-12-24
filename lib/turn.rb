def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && position_taken?(board, position) == false
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == nil
   return false
 elsif board[position.to_i - 1] == "X" || board[position.to_i] == "O"
   return true
 end
enddef move( board, position, char="X")
board[(position.to_i - 1.to_i)] = char
display_board(board)
end

def move( board, position, char="X")
board[(position.to_i - 1.to_i)] = char
display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
    if valid_move?(board, input) == true
        move(board, input, char="X")
    else
      turn(board)
    end
end
