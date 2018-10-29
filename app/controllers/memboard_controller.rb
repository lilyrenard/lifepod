class MemboardController < ApplicationController
  def board
    @memories = policy_scope(Memory)
    @stamps = pertinent_stamps
  end

  private

  def pertinent_stamps
    # algorithme de pertinence a definir
    return Stamp.all
  end
end
