class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @phrase.split(/[\s,:!&@$%^.]+/).map do |w|
      w = w[1..] if w.start_with?("'")
      w = w.chop if w.end_with?("'")
      w.downcase
    end.reject(&:empty?)
      .group_by(&:itself).transform_values(&:count)
  end
end
