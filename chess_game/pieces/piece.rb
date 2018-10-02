class Piece
  attr_reader :name

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @name = "x"
  end

  def to_s


  end

  def empty?
    if board.grid.pos.is_a?(NullPiece)
      return true
    end
    return false
  end

  def valid_moves


  end

  def pos=(val)
    x, y = pos
    board.grid[x][y] = val
  end

  def symbol

  end


  private

  def move_into_check?(end_pos)

  end
end
