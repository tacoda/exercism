class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    1.upto(@num).reduce(:+) ** 2
  end

  def sum_of_squares
    1.upto(@num).map { |n| n ** 2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
