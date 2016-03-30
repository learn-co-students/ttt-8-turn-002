def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
  num = (position.to_i) - 1
  if (((0..8).include?(num)) && (board[num] == " "))
    return true
  else
    false
  end
end

def move(board, position, char = "X")
  num = (position.to_i) - 1
  board[num] = char
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
  if valid_move?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    turn(board)

  end
end

