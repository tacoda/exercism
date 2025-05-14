class EliudsEggs
  def self.egg_count(eggs)
    eggs.to_s(2).chars.map(&:to_i).count(1)
  end
end
