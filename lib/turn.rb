
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp #was something else til we put it in the loop
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
  else
    while !valid_move?(board, input)
      puts "Please enter 1-9:"
      input = gets.chomp
      if valid_move?(board, input)
        move(board, input)
        display_board(board)
        break
      end
    end
  end



=begin
  while valid_move?(board, input) do
    puts "Please enter 1-9:"
    input = gets.chomp
    move(board,input)
    display_board(board)
    #if valid_move?(board, input)
      #break
    #end
    turn
  end
=end

end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
  if position.to_i.between?(1,9) == false
    return false
  else
    position = position.to_i - 1
  end

  if board == []
    return true
  end

  if position_taken?(board, position)
    return false
    #ooooh if the position is take, it's NOT a valid move lol
  else
    return true
  end
end


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X"  || board[position] == "O"
    return true
  end
end



def move(board, position, char = "X")
  board[position.to_i - 1] = char
  board
end


