require_relative "piece"

class Board
  
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @sentinel
  end
  
  def [](pos)
    row, col = pos
    @grid[row][col]
  end
  
  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end
  
  def move_piece(color, start_pos, end_pos)
    piece = self[start_pos]
    if piece.nil?
      raise "there is no piece at start_pos: #{start_pos}"
    end
    unless self[end_pos].nil?
      raise "there is already a piece in end_pos: #{end_pos}"
    end
    
    
    self[end_pos] = piece 
    piece.pos = end_pos
    self[start_pos] = nil
  end
  
  def self.valid_pos?(pos)
    pos.all? {|n| (0..7).include?(n)}
  end 
  
  # def display
  #   puts "-----------"
  #   @grid.each do |row|
  #     row.each do |piece|
  #       if piece.nil?
  #         print " ~nil~ "
  #       else
  #         print " #{piece.color} "
  #       end
  #     end
  #     puts ""
  #   end
  #   puts "-----------"
  # end
  
end 