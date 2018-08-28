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
  
  def moves 
  end
  
  def empty?
      #true or false 
  end 
  
  def valid_moves
  end 
  
  def pos=(val)
  end 
  
  def symbol 
  end 
  
  private 
  
  def move_into_check?(end_pos)
    #true or false 
  end 
end

