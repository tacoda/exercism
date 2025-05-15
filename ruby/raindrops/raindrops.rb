class Raindrops
  def self.convert(drops)
    converted = ""
    converted = converted + "Pling" if drops % 3 == 0
    converted = converted + "Plang" if drops % 5 == 0
    converted = converted + "Plong" if drops % 7 == 0
    return converted unless converted.empty?
    drops.to_s
  end
end
