module Slideable
  HORIZONTAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]].freeze

  DIAGONAL_DIRS = [[1, 1], [-1, -1], [1, -1], [-1, 1]].freeze

  def moves
    possible_moves = []

    move_dirs.each do |dir|
      x, y = dir
      possible_moves += grow_unblocked_moves_in_dir(x, y)
    end

    possible_moves
  end

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  private

  def move_dirs
    raise "Don't use this method! Use the specific piece's method."
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    x, y = pos
    moves = []

    check = true
    while check
      x , y  = x + dx, y + dy

      if valid_pos?([x, y]) && board.grid[x][y].empty?
        moves << [x, y]
      elsif board.grid[x][y].color != color
        moves << [x, y]
        break
      end
    end
  moves
  end
end
