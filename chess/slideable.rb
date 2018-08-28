module Slideable
  HORIZONTAL_DIRS = [ [0, -1], # LEFT 
                      [0, 1], # RIGHT 
                      [-1, 0], # DOWN
                      [1, 0] # UP 
                    ]
  DIAGONAL_DIRS = [  [1, 1], # DOWN-RIGHT 
                     [1, -1], # DOWN-LEFT 
                     [-1, 1], # UP-RIGHT 
                     [-1, -1] ] # UP-LEFT 
  
  def moves
    dir = HORIZONTAL_DIRS if self.move_dirs == "horizontal"
    dir = DIAGONAL_DIRS if self.move_dirs == "diagonal"
    dir = HORIZONTAL_DIRS + DIAGONAL_DIRS if self.move_dirs == "both"
    
    all_valid_moves = []
    dir.each do |inc|
      all_valid_moves += grow_unblocked_moves_in_dir(inc[0], inc[1])
    end 
    all_valid_moves
  end 
  
  private 
  
  def move_dirs; end 
  
  def grow_unblocked_moves_in_dir(dx, dy) 
    result = []
    new_pos = [ (@pos[0] + dx), (@pos[1] + dy) ]
    while @board.valid_pos?(new_pos) 
      result << new_pos
      new_pos = [ (new_pos[0] + dx), (new_pos[1] + dy) ]
    end 
    result
  end 
end 