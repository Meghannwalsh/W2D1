require_relative "piece"
require_relative "nulpiece"
require "byebug"

class Board 

  def initialize
    @board = Array.new(8) {Array.new(8)}

    board.each_with_index do |row, i|
      row.each_with_index do |col, j|
        if i < 2
          board[i][j] = Piece.new
        elsif i < 6
          board[i][j] = Nulpiece.new 
        else  
          board[i][j] = Piece.new
        end
        # put null pieces here
      end
    end
  end 

  def move_piece(start_pos, end_pos)
    raise NoPieceError if self[start_pos].is_a?(Nulpiece)
    raise InvalidMoveError if !valid_move?(end_pos)
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  end 
 #----
  def []=(pos, piece)
    row, col = pos
    board[row][col] = piece
  end

  def [](pos)
    puts "hello there my friends"
    x, y = pos
    board[x][y]
  end

  def valid_move?(pos)
    return false if pos.first > 7 || pos.first < 0 || pos.last > 7 || pos.last < 0
    return true 
  end 

  private

  attr_accessor :board

end 