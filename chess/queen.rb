require_relative 'slideable'

class Queen < Piece
  include Slideable
  
  def symbol 
  end 
  
  protected 
  
  def move_dirs 
    "both"
    # ANY DIRECTION - STRAIGHT OR DIAGONAL 
    # CANNOT JUMP OVER ANY PIECES - PATH CANNOT BE OBSTRUCTED BY OWN COLORED PIECES
    # CAN TAKE ONE PIECE OF OTHER COLOR 
  end 
end 