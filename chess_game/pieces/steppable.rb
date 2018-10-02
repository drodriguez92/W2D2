module Steppable

def moves
  moves = []
  current_pos = self.pos
  move_diffs.each do |diff|
    x, y = self.pos
    i, j = diff
    x, y = x + i, y + j

    if valid_pos?([x, y]) == false
      break
    end

    if board.grid[x, y].empty?
      moves << [x, y]
    elsif board.grid[x][y].color != color
      moves << [x, y]
      break
    end
  end

  return moves
end

private
def move_diffs
raise "Error"
end

end
