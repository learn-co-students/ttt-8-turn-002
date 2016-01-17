def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  number = input.to_i
  if valid_move?(board,input)
    move(board, input, letter = "X")
    display_board(board)
  else
    puts "Invalid input"
    display_board(board)
    turn(board)
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,num,letter = "X")
  board[num.to_i - 1] = letter
end

def position_taken?(board, num)
  if ((board[num] == " ") || (board[num] == "") || (board[num] == nil))
    return false
  else
    return true
  end
end

def valid_move?(board,num)
  num = num.to_i - 1
  if (num.between?(0,8) && !position_taken?(board,num))
    return true
  else
    return false
  end
end