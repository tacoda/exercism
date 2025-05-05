class Acronym
  def self.abbreviate(phrase)
    phrase.split(/[\s-]/)
      .reject { |entry| entry.empty? }
      .map { |word| word.chars.first.upcase }
      .join
  end
end
