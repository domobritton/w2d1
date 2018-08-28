require 'colorize'
require_relative 'cursor'
require_relative 'board'

class Display 
  
  def initialize(board, cursor_pos)
    @board = board 
    @cursor_pos = cursor_pos
    @cursor = Cursor.new([0,0], board)
  end 

  def render
    (0..7).each do |row_idx|
      (0..7).each do |col_idx|
        if [row_idx, col_idx] == @cursor_pos
          print "cursor".colorize(:color => :black, :background => :light_blue)
        else 
          color = :black if (row_idx + col_idx).even?
          color = :red if (row_idx + col_idx).odd?
          print "#{color}".colorize(:color => :white, :background => color)
        end
      end 
      puts ""
    end 
  end 
  
  
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