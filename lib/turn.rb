def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, player_input, character = "X")
  board[player_input] = character
end
def valid_move?(board, index)
  index.between?(0, 8) && !position_taken(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end
