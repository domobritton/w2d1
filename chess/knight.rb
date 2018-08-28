class Knight < Piece
  include Stepable
  
  # "L" SHAPE - [+2, +1], [+2, -1], [-2, +1], [-2, -1], [+1, +2], [+1, -2], [-1, +2], [-1, -2]
  
  def symbol  
  end 
  
  protected
  
  def move_diffs 
  end 
end 