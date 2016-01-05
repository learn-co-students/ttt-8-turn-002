
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, position)
   position = position.to_i
   position = position - 1
   if position.between?(0, 8) && position_taken?(board, position) == false

       return true
   elsif position_taken?(board, position) == true
      return false
   else
       return false
   end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

   def position_taken?(board, position)
       if board[position] == " "
           return false
       elsif board[position] == ""
           return false
       elsif board[position] == nil
           return false
       else
           return true
       end
    end
def move(board, position, value = "X")


   board[position.to_i - 1] = value

end
def turn(board)

   puts "Please enter 1-9:"
   position = gets.strip
   if valid_move?(board, position)
      move(board, position, value = "X")
   else
      turn(board)
   end
   display_board(board)

end



