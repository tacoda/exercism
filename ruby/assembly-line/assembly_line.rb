class AssemblyLine
  CARS_PER_HOUR = 221
  MINUTES_PER_HOUR = 60

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    CARS_PER_HOUR * @speed * success_rate(@speed)
  end

  def working_items_per_minute
    (production_rate_per_hour / MINUTES_PER_HOUR).floor
  end

  private

  def success_rate(speed)
    if speed <= 4
      1
    elsif speed <= 8
      0.9
    elsif speed == 9
      0.8
    else
      0.77
    end
  end
end
