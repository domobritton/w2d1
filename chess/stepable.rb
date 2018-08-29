module Stepable
  
  def moves 
    all_valid_moves = []
    move_diffs.each do |diff|
      new_pos = [ (@pos[0] + diff[0]), (@pos[1] + diff[1]) ]
      all_valid_moves << new_pos if @board.valid_pos?(new_pos)
    end 
    all_valid_moves
  end 
  
  def moves_diffs
    #overwritten by king/knight
  end 
end 