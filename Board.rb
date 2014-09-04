class Board
  
  attr_reader :board, :empty_cell, :won, :tie
  
  def initialize
    @board = Array.new(9, "-")
  end
  
  def print_current_board
    print "  #{@board[0]}  |  #{@board[1]}  |  #{@board[2]}\n"
    print"-----|-----|----\n"
    print "  #{@board[3]}  |  #{@board[4]}  |  #{@board[5]}\n"
    print"-----|-----|----\n"
    print "  #{@board[6]}  |  #{@board[7]}  |  #{@board[8]}\n\n"
  end
  
  def board_key
    print "  0  |  1  |  2\n"
    print"-----|-----|-----\n"
    print "  3  |  4  |  5\n"
    print"-----|-----|-----\n"
    print "  6  |  7  |  8\n"
  end
  
  def update_board(spot, marker)
    if @board[spot] == "-"
      @board[spot] = marker
      true
    else
      false
    end
  end  
  
  def board_full?
    remaining_spaces = board.select { |a| a == "-" }
    @spaces_left = remaining_spaces.length
    if @spaces_left < 1
      return true
    else
      return false
    end
  end
      
  def winning_game?
    if (@board[0] != "-" && @board[1] != "-" && @board[2] != "-") && ((@board[0] == @board[1]) && (@board[0] == @board[2]))
      true
    elsif (@board[3] != "-" && @board[4] != "-" && @board[5] != "-") && ((@board[3] == @board[4]) && (@board[3] == @board[5]))
      true
    elsif (@board[6] != "-" && @board[7] != "-" && @board[8] != "-") && ((@board[6] == @board[7]) && (@board[6] == @board[8]))
      true
    elsif (@board[0] != "-" && @board[3] != "-" && @board[6] != "-") && ((@board[0] == @board[3]) && (@board[0] == @board[6]))
      true
    elsif (@board[1] != "-" && @board[4] != "-" && @board[7] != "-") && ((@board[1] == @board[4]) && (@board[1] == @board[7]))
      true
    elsif (@board[2] != "-" && @board[5] != "-" && @board[8] != "-") && ((@board[2] == @board[5]) && (@board[2] == @board[8]))
      true
    elsif (@board[0] != "-" && @board[4] != "-" && @board[8] != "-") && ((@board[0] == @board[4]) && (@board[0] == @board[8]))
      true
    elsif (@board[2] != "-" && @board[4] != "-" && @board[6] != "-") && ((@board[2] == @board[4]) && (@board[2] == @board[6]))
      true
    else
      false
    end
  end
  
  def tie_game?
    !winning_game? && board_full?
  end
  
  
end