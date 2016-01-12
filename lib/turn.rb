def display_board(player_moves= moves["   ","   ","   ","   ","   ","   ","   ","   ","   "])# Define display_board that accepts a board and prints
  puts " #{player_moves[0]} | #{player_moves[1]} | #{player_moves[2]}  "
  puts "-----------"
  puts " #{player_moves[3]} | #{player_moves[4]} | #{player_moves[5]}  "
  puts "-----------"
  puts " #{player_moves[6]} | #{player_moves[7]} | #{player_moves[8]}  "

end
def valid_move?(board, position) # check if valid position
  if position.to_i < 1 || position.to_i > 9
    false
  elsif position_taken?(board, position) == true
    false
  else
    true
  end
end
def position_taken?(board, position) #check if position is alreadu in use
  if board[position.to_i - 1]== " " || board[position.to_i - 1]== "" || board[position.to_i - 1]== nil
    return false
  else
    return true
  end
end
def move (board , location, players_char = "X") #places player maker in valid position
     # coverts string into an int
  board[location.to_i - 1]= players_char
end
def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == false
    puts "Invalid input"
    turn(board)
  else
    move(board, position)
    display_board(board)
  end
end
