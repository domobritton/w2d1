require_relative "stepable"

class Knight < Piece
  include Stepable
  
  # "L" SHAPE - [+2, +1], [+2, -1], [-2, +1], [-2, -1], [+1, +2], [+1, -2], [-1, +2], [-1, -2]
  
  def symbol  
    return "♞" if @color == :black 
    return "♘" if @color == :white
  end 
  
  protected
  
  def move_diffs 
    [[+2, +1], [+2, -1], [-2, +1], [-2, -1],
    [+1, +2], [+1, -2], [-1, +2], [-1, -2]]
  end 
end 