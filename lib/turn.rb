def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your #valid_move? method here
def valid_move?(board,position)
  position = position.to_i
  if position.between?(1,9) && (position_taken?(board, position) == false)
      return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position.to_i
  if board[position -1] == " "
    return false
  elsif board[position -1] == ""
    return false
  elsif board[position -1] == nil
    return false
  elsif board[position -1] == "X" || "O"
    return true
  end
end
def move(array, position, value = "X")
  array[position.to_i-1] = value
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board, input, "X")
    display_board(board)
  else
    puts "Invalid input. Please try again."
    display_board(board)
    turn(board)
  end
end