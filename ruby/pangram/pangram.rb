class Pangram
  def self.pangram?(phrase)
    letters = ('a'..'z').map { |c| [c, 0] }.to_h
    phrase.downcase.gsub(/[^a-z]/, '').chars.each do |l|
      letters[l] += 1
    end
    letters.values.all? { |n| n >= 1 }
  end
end
