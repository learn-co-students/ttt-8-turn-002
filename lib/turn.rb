
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  return false if position.to_i.to_s != position
  board[position.to_i-1].to_s.strip==""
end

def move(board,position,input)
  board[position.to_i-1] = input if valid_move?(board, position.to_s)
end

def turn(board)
  begin
    puts "Please enter 1-9:"
    position = gets.chomp.to_i
   end until position > 0 && position < 10
   move(board,position.to_s, "X")
   display_board(board)
end

