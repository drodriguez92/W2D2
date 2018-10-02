class Pawn < Piece

  def symbol
    :pawn
  end

  def move_dirs
    [[pos[0] + 1, pos[1]], [pos[0] - 1, pos[1] - 1], [pos[0] - 1, pos[1] + 1]]
  end

  private

  def at_start_row?
    if color == white && pos[0] == 6
      return true
    elsif color == black && pos[0] == 1
      return true
    end

    return false
  end

  def forward_dir
    if at_start_row?
      2.times do
        move_dirs[0]
      end
    else
      move_dirs[0]
    end
  end

  def forward_steps

  end

  def side_attacks

  end
end
