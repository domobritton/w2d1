class King < Piece
  include Stepable
  
  # ONLY ONE SQUARE IN ANY DIRECTION - EXCEPT IF SQUARE IS OCCUPIED BY OWN COLOR 
  # CANNOT MOVE TO A SQUARE THAT PUTS HIM INTO A CHECK POSITION 
  
  def symbol  
  end 
  
  protected
  
  def move_diffs 
  end 
end 