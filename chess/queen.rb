require_relative 'slideable'

class Queen < Piece
  include Slideable
  
  def symbol 
    return "♛" if @color == :black 
    return "♕" if @color == :white
  end 
  
  protected 
  
  def move_dirs 
    "both"
  end 
end 