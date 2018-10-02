module Steppable

def moves
  possible_moves = []
  current_pos = self.pos
  move_diffs.each do |diff|
    possible_moves << diff
  end
  return possible_moves
end

private
def move_diffs
raise "Error"
end

end
