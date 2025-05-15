class Luhn
  def self.valid?(card_number)
    return false if card_number.strip.length <= 1
    return false if card_number =~ /[a-z]|:|%/
    card_number.chars.reverse.reject do |c|
      c == ' '
    end.map(&:to_i).map.with_index do |n, i|
      n = n * 2 if i.odd?
      n > 9 ? n - 9 : n
    end.sum % 10 == 0
  end
end
