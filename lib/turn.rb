# code your discplay_board method to show the state of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#{board[0]}

# code your #valid_move? method here
def valid_move?(board, position)
  if position.to_i.between?(1,9) && position_taken?(board, position) == false
    true
  elsif position.to_i.between?(1,9) && position_taken?(board, position) == true
    false
  else  !position.to_i.between?(1,9)
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
    false
  else
    true
  end
end

# code your #move method to ask for the user choice
def move(board, position, token="X")
  #this sets the correct index value of the chosen position on the board equal to the token 
  #(i.e., puts an X or O where you chose, if valid)
  board[position.to_i-1]= token
end

#stub method of the #turn method
def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true
      move(board, position, token = "X")
  else
    turn(board)
  end
  display_board(board)
end
