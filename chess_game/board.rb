require_relative 'piece'
require_relative 'null_piece'
require 'byebug'

class EmptyPosError < StandardError
end

class IllegalMoveError < StandardError
end


class Board
  attr_accessor :board
  def initialize
    @board = []

    2.times { @board << Array.new(8, Piece.new.name) }
    4.times { @board << Array.new(8, NullPiece.new.name) }
    2.times { @board << Array.new(8, Piece.new.name) }
  end


  def move_piece(start_pos, end_pos)
    begin
      x, y = start_pos
      i, j = end_pos
      board[x][y], board[i][j] = board[i][j], board[x][y]
      # raise IllegalMoveError if !valid_move?(board[end_pos])
      # raise EmptyPosError if board[start_pos].is_a?(NullPiece)
    rescue EmptyPosError => e
      puts "There is not piece at the start position"
      retry
    rescue IllegalMoveError => e
      puts "Cannot move to that location"
      retry
    end


  end

end
