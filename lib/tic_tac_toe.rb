class TicTacToe
  attr_accessor :board , :WIN_COMBINATIONS

  def initialize (board = nil)
    @board = board ||Array.new(9, " ")
  end

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

    def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(input)
      input.to_i-1
    end

    def move(index, token = "X")
      @board[index] = token
    end

    def position_taken?(index)
      !(@board [index] == " ")
    end

    def valid_move?(index)
      index.between?(0,8) && ! position_taken?(index)
    end
#
#     def turn(board)
#       puts "Make Your Move Between 1-9"
#       user_input = gets.strip
#       index = input_to_index(user_input)
#       if valid_move?(board, index)
#         move(board, index, current_player(board))
#         display_board(board)
#       else
#         turn(board)
#       end
#     end
#
    def turn_count
      counter = 0
      while counter < @board.size
        if position_taken?(@board,counter)
          occupied_spaces += 1
    end
    counter += 1 
    end 
    occupied_spaces
  end 
#
#     def current_player(board)
#       if turn_count(board).odd?
#         "O"
#       else
#         "X"
#       end
#     end
#
#     def won?(board)
#     WIN_COMBINATIONS.each do|combo|
#     board[combo[0]] == board[combo[1]] &&
#     board[combo[1]] == board[combo[2]] &&
#     position_taken?(board, combo[0])
#   end
# end
#
#  def draw?(board)
#   !won?(board) && full?(board)
#  end
#
#  def over?(board)
#   won?(board) || draw?(board)
#  end
#
#  def winner(board)
#   if winning_combo = won?(board)
#   board[winning_combo.first]
#   end
#  end
#
#  def play(board)
#   while !over?(board)
#     turn(board)
#   end
#   if won?(board)
#     puts "Congratulations #{winner(board)}!"
#   elsif draw?(board)
#     puts "Draw Game"
#   end
end
