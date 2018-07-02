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
user_input = "1"

# move method using array, index & X or O 
def move(index, token)
  @board[index] = token
  end

# position_taken? method
def position_taken?(index)
  @board[index] != " "
  end
  
# valid_move? method
def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
    end
  end
  
  # turn method
def turn
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(index)
    token = current_player
    move(index, token)
else
    turn
  end
  display_board
end

# turn_count method
#def turn_count
 # turns = 0
  #@board.each do |played|
   # if played == "X" || played == "O"
    #  turns += 1
    #else
    #turn
  #end
  #display_board
#end
def turn_count
    @board.count{|square| square != " " }
  end
