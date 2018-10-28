class MemboardController < ApplicationController
  def board
    @memories = current_user.memories.where(suggested: false)
    @stamps = pertinent_stamps
  end

  private

  def pertinent_stamps
    # algorithme de pertinence a definir
    return Stamp.all
  end
end
