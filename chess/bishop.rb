require_relative 'slideable'

class Bishop < Piece
  include Slideable
  
  def symbol 
    return "♝" if @color == :black 
    return "♗" if @color == :white
  end 
  
  protected 
  
  def move_dirs 
    'diagonal'
  end 
  
  
end 