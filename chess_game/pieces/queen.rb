require_relative 'slideable'

class Queen < piece
  include Slideable

  protected
  def symbol
    :queen
  end

  def move_dirs
    diagonal_dirs + horizontal_dirs
  end
end
