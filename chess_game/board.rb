require_relative 'pieces/piece'
require_relative 'pieces/null_piece'
require 'byebug'

class EmptyPosError < StandardError
end

class IllegalMoveError < StandardError
end


class Board
  attr_accessor :grid
  attr_reader :sentinel
  def initialize
    @grid = []
    @sentinel = NullPiece.instance

    2.times { @grid << Array.new(8, Piece.new("", "", "").name) }
    4.times { @grid << Array.new(8, sentinel.name) }
    2.times { @grid << Array.new(8, Piece.new("", "", "").name) }
  end

  def [](pos)
    row, col = pos
    self.grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    self.grid[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    debugger
    begin
      valid_move?(start_pos, end_pos)
      self[end_pos] = self[start_pos]
      self[start_pos] = sentinel.name

    rescue EmptyPosError => e
      puts "There is no piece at the start position!"
    rescue IllegalMoveError => e
      puts "Cannot move to that location!"
    end
  end

  def valid_move?(start_pos, end_pos)
    raise EmptyPosError if self[start_pos] == sentinel
    valid_pos?(start_pos)
    valid_pos?(end_pos)
  end

  def valid_pos?(pos)
    return false if pos[0] < 0 || pos[0] > 7
    return false if pos[1] < 0 || pos[1] > 7
    return true
  end

end
