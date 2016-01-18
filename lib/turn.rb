def display_board(board)

  #define some useful constants...
  sp = " "
  p = "|"
  dashes = "-----------"

  #now print the board
  puts sp + board[0] + sp + p + sp + board[1] + sp + p + sp + board[2] + sp
  puts dashes
  puts sp + board[3] + sp + p + sp + board[4] + sp + p + sp + board[5] + sp
  puts dashes
  puts sp + board[6] + sp + p + sp + board[7] + sp + p + sp + board[8] + sp
end

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1,9)
    if position_taken?(board, position - 1)
      return false
    else
      return true
    end
  else
    return false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def move(board, input, token = "X")
  puts "Welcome to Tic Tac Toe!"
  #puts "Where would you like to go?"
  input = input.to_i - 1
  board[input] = token
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  mymove = gets.strip
  until valid_move?(board,mymove)
    puts "Please enter 1-9:"
    mymove = gets.strip
  end
  move(board, mymove, "X")
end