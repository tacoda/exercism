class Matrix
  def initialize(matrix_string)
    @matrix = matrix_string.split("\n").map do |row|
      row.split(" ").map(&:to_i)
    end
  end

  def row(num)
    @matrix[num - 1]
  end

  def column(num)
    @matrix.transpose[num - 1]
  end
end
