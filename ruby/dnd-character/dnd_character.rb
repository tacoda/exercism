class DndCharacter
  def self.modifier(score)
    (score - 10) / 2
  end

  attr_reader :strength,
              :dexterity,
              :constitution,
              :intelligence,
              :wisdom,
              :charisma

  def initialize
    @strength = generate_score
    @dexterity = generate_score
    @constitution = generate_score
    @intelligence = generate_score
    @wisdom = generate_score
    @charisma = generate_score
  end

  def generate_score
    rolls = []
    4.times do |i|
      rolls << rand(6) + 1
    end
    rolls.max(3).reduce(0) { |sum, num| sum + num }
  end

  def hitpoints
    10 + self.class.modifier(constitution)
  end
end
