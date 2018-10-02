require_relative 'board'
require "colorize"
require_relative "cursor"
require "byebug"

class Display
  attr_reader :board, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    system("clear")

    40.times {print "-".white.on_light_blue}
    puts
    board.grid.each_with_index do |row, idx1|
      row.each_with_index do |pos, idx2|
        if pos == "x"
          # debugger
          if cursor.cursor_pos == [idx1,idx2] && cursor.selected == false
            print "| X |".white.on_red
          elsif cursor.cursor_pos == [idx1,idx2] && cursor.selected == true
            print "| X |".white.on_green
          else
            print "| X |".white.on_light_blue
          end
        elsif pos == "n"
          if cursor.cursor_pos == [idx1,idx2] && cursor.selected == false
            print "|   |".white.on_red
          elsif cursor.cursor_pos == [idx1,idx2] && cursor.selected == true
            print "|   |".white.on_green
          else
            print "|   |".white.on_light_blue
          end
        end
      end
      puts " "
      40.times {print "-".white.on_light_blue}
      puts
    end

  end

  def display_test
    10.times do
      self.render
      cursor.get_input
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  d = Display.new(Board.new)
  d.display_test
end
