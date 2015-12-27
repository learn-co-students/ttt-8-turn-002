def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  indexed_position = position.to_i - 1
  indexed_position.between?(0,8) && !position_taken?(board, indexed_position)
end

def position_taken?(board, position)
  !!(board[position] == 'X' || board[position] == 'O')
end

def move(board, position, token = 'X')
  board[position.to_i - 1] = token
end

def turn(board)
  valid = false
  while !valid
    puts 'Please enter 1-9:'
    user_position = gets.chomp
    valid = valid_move?(board, user_position)
  end
  move(board, user_position)
  display_board(board)
end