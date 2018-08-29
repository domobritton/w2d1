require_relative "piece"
require_relative "display"
require_relative "null_piece"

class Board
  
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @sentinel = NullPiece.instance
    # @grid[4][7] = Piece.new(:black, self, [4, 7])
    # @grid[3][4] = Piece.new(:black, self, [3, 4])
    
    @grid[0][0] = Rook.new(:black, self, [0, 0])
    @grid[0][1] = Knight.new(:black, self, [0, 1])
    @grid[0][2] = Bishop.new(:black, self, [0, 2])
    @grid[0][3] = Queen.new(:black, self, [0, 3])
    @grid[0][4] = King.new(:black, self, [0, 4])
    @grid[0][5] = Bishop.new(:black, self, [0, 5])
    @grid[0][6] = Knight.new(:black, self, [0, 6])
    @grid[0][7] = Rook.new(:black, self, [0, 7])
    
    @grid[7][0] = Rook.new(:white, self, [7, 0])
    @grid[7][1] = Knight.new(:white, self, [7, 1])
    @grid[7][2] = Bishop.new(:white, self, [7, 2])
    @grid[7][3] = Queen.new(:white, self, [7, 3])
    @grid[7][4] = King.new(:white, self, [7, 4])
    @grid[7][5] = Bishop.new(:white, self, [7, 5])
    @grid[7][6] = Knight.new(:white, self, [7, 6])
    @grid[7][7] = Rook.new(:white, self, [7, 7])
    
    (0..7).each do |col|
      @grid[1][col] = Pawn.new(:black, self, [1, col])
      @grid[6][col] = Pawn.new(:white, self, [6, col])
    end 
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
  
  def valid_pos?(pos)
    pos.all? {|n| (0..7).include?(n)} && self[pos] == nil 
  end 
  
  # def empty?(pos)
  #   # return true if self[pos] == @sentinel
  #   return true if self[pos] == nil 
  #   false
  # end 
  
end 