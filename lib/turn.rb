def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end


def valid_move?(board, position)
  if position.to_i.between?(1,9) && position_taken?(board, position)
    true
  else
    false
  end    
end


def move(board, position, value = "X")
  pos = position.to_i - 1
  board[pos] = value
end  


def position_taken?(board, position)
  pos = position.to_i - 1
  if board[pos] == " " || board[pos] == "" || board[pos] == nil
    true
  elsif board[pos] == "X" || board[pos] == "O"
    false
  end     
end 


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    while valid_move?(board, input) == false
      puts "Please enter 1-9:"
      input = gets.strip
    end
  end  
end  