class MemboardController < ApplicationController
  def board
    @memories = policy_scope(Memory)
    # je selectionne toutes les combinaisons de 2 stamps
    # je trie mon array d'id de stamps en fonction de leur nombre de memories
    @stamps = policy_scope(Stamp)
         .pluck(:id)
         .combination(2)
         .to_a
         .sort_by { |stamp| Memory.joins(:stamps).where(stamps: { id: [stamp[0], stamp[1]] }).group(:id).having("count(*) > 1").distinct.count.length }
         .reverse
         .first(10)
         .map { |id| Stamp.find(id) }
  end

  private

  def pertinent_stamps
    # algorithme de pertinence a definir
    return Stamp.all
  end
end

