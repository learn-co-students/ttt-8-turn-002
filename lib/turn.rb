def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
  if position.to_i.between?(1,9)
    if !position_taken?(board, position)
      true
    end
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position.to_i-1
  board[position] != " " && board[position] != "" && board[position] != "nil"
end

# code your move method here!
def move(board, location, player = "X")
    board[location.to_i-1] = player
end

# define turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    puts "You cannot move there!!!"
    turn(board)
  end

  # display board
display_board(board)
 end