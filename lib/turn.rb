
def turn(board)
  puts "Please enter 1-9:"

  val = gets.strip
  until valid_move?(board, val)
puts "The value entered is not valid. Please enter 1-9:"
    val = gets.strip
  end
    newboard = move(board, val)
    display_board(board)

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(array, position, value="X")

  array[position.to_i-1] = value

  return array
end

# code your #valid_move? method here

def valid_move?(board, position)

  if !position_taken?(board, position.to_i-1) && position.to_i.between?(1,9)
    return true
  else
    return false
  end

end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)

  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end

end