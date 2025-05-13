class Series
  def initialize(number_string)
    raise ArgumentError if number_string.length == 0
    @series = number_string
  end

  def slices(size)
    raise ArgumentError if size <= 0 || size > @series.length
    (0..@series.length - size).map { |n| @series[n, size] }
  end
end
