class Complement
  def self.of_dna(sequence)
    sequence.chars.map { |c| transcribe(c) }.join
  end

  def self.transcribe(char)
    case char
    when 'G' then 'C'
    when 'C' then 'G'
    when 'T' then 'A'
    when 'A' then 'U'
    else ''
    end
  end
end
