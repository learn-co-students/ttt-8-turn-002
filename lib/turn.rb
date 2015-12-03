

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} " 
puts "-----------"  
puts " #{board[3]} | #{board[4]} | #{board[5]} " 
puts "-----------"  
puts " #{board[6]} | #{board[7]} | #{board[8]} "   
end

def position_taken?(board, position)
  newposition = position.to_i-1
  if board[newposition] == "" ||board[newposition] == " " ||board[newposition] == "  " ||board[newposition] == "    " ||board[newposition] == nil 
    false
  else
    true
  end  
end

def valid_move?(board, position)
  if position.to_i.between?(1,10) 
    if !position_taken?(board, position.to_i)
      return true
    else
      return false
    end
  else
    return false
  end
end

def move(board, position, letter = "X")
    board[position.to_i-1] = letter  
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  while !valid_move?(board, position)
    puts "That is an invalid move please try again"
    position = gets.strip
  end
  move(board,position)
  display_board(board)
end

      