class Hamming
  def self.compute(first_strand, second_strand)
    first = first_strand.chars
    second = second_strand.chars
    raise ArgumentError if first.count != second.count
    second.each_with_index.count { |c, i| c != first[i] }
  end
end
