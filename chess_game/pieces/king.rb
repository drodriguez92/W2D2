require_relative 'steppable'

class King < Piece
  include Steppable

  def symbol
    :king
  end

  protected

  def move_diffs
    [[pos, pos + 1], [pos + 1, pos], [pos, pos - 1], [pos - 1, pos], [pos + 1, pos + 1],
     [pos - 1, pos - 1], [pos + 1, pos - 1], [pos - 1, pos + 1]]
  end
end
