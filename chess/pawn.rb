class Pawn < Piece
  
  # ONLY MOVE ONE SQUARE FORWARD 
  # OR TWO SQUARES FORWARD ON THEIR FIRST MOVE 
  # CAN MOVE DIAGONALLY FORWARD ONE SQUARE TO CAPTURE OPPOSING PIECE
  
  def symbol 
  end 
  
  def move_dirs 
  end 
  
  private
  
  def at_start_row?
  end 
  
  def forward_dir 
    #returns 1 or -1
  end 
  
  def forward_step
  end 
  
  def side_attacks 
  end  
end 