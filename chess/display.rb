require 'colorize'
require_relative 'cursor'
require_relative 'board'

class Display 
  
  def initialize(board, cursor_pos)
    @board = board 
    @cursor_pos = cursor_pos
    @cursor = Cursor.new([0,7], board)
  end 

  def render
    (0..7).each do |row_idx|
      (0..7).each do |col_idx|
        if [row_idx, col_idx] == @cursor_pos
          print " 😄 ".colorize(:color => :white, :background => :light_blue)
        else 
          color = :black if (row_idx + col_idx).even?
          color = :red if (row_idx + col_idx).odd?
          print "   ".colorize(:color => :white, :background => color) if color == :black
          print "   ".colorize(:color => :white, :background => color) if color == :red

        end
      end 
      puts ""
    end 
  end 
  
  
  def move_cursor 
    while true 
      puts "give your input (leftkey, rightkey, upkey, downkey)"
      @cursor.get_input
      @cursor_pos = @cursor.cursor_pos 
      render 
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