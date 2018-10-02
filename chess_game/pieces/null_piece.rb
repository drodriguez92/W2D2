require 'singleton'

class NullPiece
  attr_reader :name
  include Singleton

  def name
    name = "n"
    name
  end

  def color
    return color
  end

  def symbol
    return symbol
  end

end
