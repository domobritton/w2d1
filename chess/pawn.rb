class Pawn < Piece
  
  # ONLY MOVE ONE SQUARE FORWARD 
  # OR TWO SQUARES FORWARD ON THEIR FIRST MOVE 
  # CAN MOVE DIAGONALLY FORWARD ONE SQUARE TO CAPTURE OPPOSING PIECE
  
  def initialize(color, board, pos = [])
    super 
    @start_turn = true
  end   
    
  
  def symbol 
    return "♟" if @color == :black 
    return "♙" if @color == :white
  end 
  
  def moves 
    all_valid_moves = []
    increment_array = move_dirs
    increment_array.each do |inc|
      new_pos = [ (@pos[0] + inc[0]), (@pos[1] + inc[1]) ]
      all_valid_moves << new_pos if @board.valid_pos?(new_pos)
    end 
    
    all_valid_moves
  end 
  
  def move_dirs 
    if at_start_row?
      @start_turn = false
      return [[forward_dir*2, 0], forward_step]
    end 
    return [forward_step] if side_attacks.nil?
    [side_attacks]
  end 
  
  private
  
  def at_start_row?
    @start_turn
  end 
  
  def forward_dir 
    return 1 if @color == :black
    -1
  end 
  
  def forward_step
    [forward_dir, 0]
  end 
  
  def side_attacks 
    diag1 = [(@pos[0] + 1), (@pos[1] + 1)]
    diag2 = [(@pos[0] - 1), (@pos[1] + 1)]
    if @board.valid_pos?(diag1) && @board[diag1].color != @color
      return [1, 1]
    elsif @board.valid_pos?(diag2) && @board[diag2].color != @color
      return [-1, 1]
    end
    nil
  end  
end 