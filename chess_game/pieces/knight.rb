require_relative 'steppable'

class Knight < Piece
  include Steppable


  def symbol
    :knight
  end
  
  protected

  def move_diffs
    [[pos + 2, pos + 1], [pos + 2, pos - 1], [pos - 2, pos - 1], [pos - 2, pos + 1], [pos + 1, pos + 2],
     [pos + 1, pos - 2], [pos - 1, pos + 2], [pos - 1, pos - 2]]
  end
end
