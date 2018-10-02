require_relative 'slideable'

class Queen < piece
  include Slideable

  protected
  def symbol
    :queen
  end
  
  def move_dirs
  end
end
