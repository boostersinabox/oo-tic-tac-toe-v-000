# Initialize the class & define the board
class TicTacToe
def initialize
  @board = [" "," "," "," "," "," "," "," "," "]
end

# Set winning combinations
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

# Display board
def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

# input_to_index
# convert user input into a integer, minus 1 because the array starts with zero

def input_to_index(user_input)
  user_input.to_i - 1
end

#sample user_input to use until the CLI is built
#user_input = "6"

# move method using array, index & X or O 
def move(index, token)
  @board[index] = token
end
end

# position_taken? method
def position_taken?(index)
  @board[index] != " "
  end

# valid_move? method
def valid_move?(index)
  if index.between?(0,8) && !position_taken?(index)
    TRUE
  else
    FALSE
  end  
end
