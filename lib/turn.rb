def display_board( board )
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?( board, position )
  if position < "1" or position > "9"
    return false
  elsif position.to_i < 1 or position.to_i > 9
    return false
  end

  p = position.to_i - 1

  if board[p] == " " or board[p] == "" or board[p] == nil
    true
  elsif board[p] == "X" or board[p] == "O"
    false
  end
end

def move( board, position, char = "X" )
  board[ position -1 ] = char
end

def turn( board )
  puts "Please enter 1-9:"
  position = gets.strip

  while !valid_move?( board, position ) do
    puts "Please enter 1-9:"
    position = gets.strip
  end

  move( board, position.to_i )

  display_board( board )
end