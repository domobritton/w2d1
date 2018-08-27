class Piece
  attr_accessor :color, :pos
  
  def initialize(color, board, pos = [])
    @color = color 
    @board = board 
    @pos = pos 
    @board[@pos] = self
  end
  
  def to_s
    "color: #{@color}, position: #{@pos}"
  end
  
  
  
end