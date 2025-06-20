module ArmstrongNumbers
  def self.include?(number)
    return true if number.zero?
    return true if single_digit?(number)
    test_armstrong(number)
  end

  private

  def self.single_digit?(number)
    number > 0 && number < 10
  end

  def self.test_armstrong(number)
    power = number.digits.count
    number.digits.map { |d| d ** power }.sum == number
  end
end
