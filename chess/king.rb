require_relative "stepable"

class King < Piece
  include Stepable
  
  # ONLY ONE SQUARE IN ANY DIRECTION - EXCEPT IF SQUARE IS OCCUPIED BY OWN COLOR 
  # CANNOT MOVE TO A SQUARE THAT PUTS HIM INTO A CHECK POSITION 
  
  def symbol  
    return "♚" if @color == :black 
    return "♔" if @color == :white
  end 
  
  protected
  
  def move_diffs 
    [[0, 1], [0, -1], [1, 0], [-1, 0],
    [1, 1], [1, -1], [-1, 1], [-1, -1]]
  end
   
end 