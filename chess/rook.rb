require_relative 'slideable'

class Rook < Piece
  include Slideable
  
  def symbol 
    return "♜" if @color == :black 
    return "♖" if @color == :white
  end 
  
  protected 
  
  def move_dirs 
    "horizontal"
  end 

  
end 