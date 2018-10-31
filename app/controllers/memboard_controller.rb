class MemboardController < ApplicationController
  def board
    @memories = policy_scope(Memory)
    stamps = Stamp.ids.combination(2).to_a

    mem = []
    stamps.each do |paire|
      mem << policy_scope(Memory).joins(:stamps).where(stamps: { id: paire }).distinct.count
    end

    i = mem.index { |x| mem.max }
    id_s1 = stamps[i][0]
    id_s2 = stamps[i][1]

    @stamp1 = Stamp.find(id_s1).title
    @stamp2 = Stamp.find(id_s2).title


  end

  private

  def pertinent_stamps
    # algorithme de pertinence a definir
    return Stamp.all
  end
end
