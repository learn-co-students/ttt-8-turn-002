# toggles the turn, sets the player, decides 

def turn(board)
	puts "Please enter 1-9:"
	position = gets.chomp
	if valid_move?(board, position)
		move(board, position)
	else
		display_board(board)
		turn(board)
	end
end


#  display a board given from an array of positions 
def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



# Check to see if the board[position] is free, and valid. 
def valid_move?(board,position)
	if position.to_i.between?(1, 10) && empty_position?(board, position.to_i)
			return true 
	else
		return false 
	end
end

def empty_position?(board,position)
	if board[position -1].strip.empty?
		return true 
	else
		return false 
	end
end

# performs the move, and restarts the turn
def move(board, position , player= "X" )
	position = position.to_i
	board[position -1] = player
	display_board(board)
end





# test methods
# board = ["x", "x", " ", " ", " ", " ", " ", " ", " "]

# p valid_move?(board, 3)
# p empty_position?(board, 3)
# p turn(board)
# p move(board, 1, "X")
# puts move(board, 9, "O")