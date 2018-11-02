class MemboardController < ApplicationController
  def board
    @memories = policy_scope(Memory)
    # je selectionne toutes les combinaisons de 2 stamps
    stamps = Stamp.ids.combination(2).to_a

    mem = []
    stamps.each do |paire|
      # je compte le nombre de memories associés à la paire
      mem << policy_scope(Memory).joins(:stamps).where(stamps: { id: paire }).distinct.count
    end

    # je récupère l'index de la paire avec le plus de memories
    i = mem.index { |x| mem.max }
    id_s1 = stamps[i][0]
    id_s2 = stamps[i][1]

    # je trouve les stamps associé
    @stamp1 = Stamp.find(id_s1).title
    @stamp2 = Stamp.find(id_s2).title

    #array rangée par ordre croissant
    mem_s = mem.sort
    #array rangée par ordre croissant avec les anciens index
    mem_i = mem.map{|e| mem_s.index(e)}
  end

  private

  def pertinent_stamps
    # algorithme de pertinence a definir
    return Stamp.all
  end
end
