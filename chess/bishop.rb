require_relative 'slideable'

class Bishop < Piece
  include Slideable
  
  def symbol 
  end 
  
  protected 
  
  def move_dirs 
    'diagonal'
  end 
  
  
end 