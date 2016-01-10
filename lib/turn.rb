def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position_taken?(board, position) == false && position.to_i.between?(1,9)
    true
  elsif position_taken?(board, position)
    false
  end
end 


# slight refactor of this method from previous lesson to make it work with the above 
def position_taken?(board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil 
    false  # because its blank - therefore its a valid move
  elsif board[position.to_i - 1].match(/[X,O]/)
    true # the position is taken - therefore its not a valid move
  end 
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets
 
     if valid_move?(board, input)
       move(board, input.to_i)
     else
       puts "invalid - please try again"
       input = gets
     end

display_board(board)
end

def move(board, position, letter = "X")
  board[position - 1] = letter 
end