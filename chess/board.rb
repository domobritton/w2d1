require_relative "piece"
require_relative "display"

class Board
  
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    # @sentinel = NullPiece.instance
    @grid[2][2] = Piece.new(:black, self, [2, 2])
    @grid[6][4] = Piece.new(:black, self, [6, 4])
    @grid[1][5] = Piece.new(:black, self, [1, 5])
    @grid[5][6] = Piece.new(:black, self, [5, 6])
    
  end
  
  def [](pos)
    row, col = pos
    @grid[row][col]
  end
  
  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end
  
  def move_piece(color, start_pos, end_pos)
    piece = self[start_pos]
    if piece.nil?
      raise "there is no piece at start_pos: #{start_pos}"
    end
    unless self[end_pos].nil?
      raise "there is already a piece in end_pos: #{end_pos}"
    end
    
    self[end_pos] = piece 
    piece.pos = end_pos
    self[start_pos] = nil
  end
  
  # def inspect
  #   display = Display.new(self, [0,0])
  #   display.render
  #   return nil
  # end 
  
  def valid_pos?(pos)
    pos.all? {|n| (0..7).include?(n)}
  end 
  
  def empty?(pos)
    # return true if self[pos] == @sentinel
    return true if self[pos] == nil 
    false
  end 
  
  # def display
  #   puts "-----------"
  #   @grid.each do |row|
  #     row.each do |piece|
  #       if piece.nil?
  #         print " ~nil~ "
  #       else
  #         print " #{piece.color} "
  #       end
  #     end
  #     puts ""
  #   end
  #   puts "-----------"
  # end
  
end 