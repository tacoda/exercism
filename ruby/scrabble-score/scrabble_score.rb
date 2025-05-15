class Scrabble
  def initialize(word)
    @letters = word.downcase.chars
  end

  def score
    @letters.map { |c| letter_score(c) }.sum
  end

  def letter_score(letter)
    case letter
    when /q|z/
      10
    when /j|x/
      8
    when /k/
      5
    when /f|h|v|w|y/
      4
    when /b|c|m|p/
      3
    when /d|g/
      2
    else
      1
    end
  end
end
