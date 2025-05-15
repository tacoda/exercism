class Isogram
  def self.isogram?(word)
    characters = word.downcase.chars.reject do |c|
      c =~ /\s|-/
    end
    characters.count == characters.uniq.count
  end
end
