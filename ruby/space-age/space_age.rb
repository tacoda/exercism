class SpaceAge
  SECONDS = 
  ORIBTAL_PERIOD = {
    mercury: 7_600_543.81992,
    venus: 19_414_149.052176,
    earth: 31_557_600.0,
    mars: 59_354_032.69008,
    jupiter: 374_355_659.124,
    saturn: 929_292_362.8848,
    uranus: 2_651_370_019.3296,
    neptune: 5_200_418_560.032
  }

  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    seconds / ORIBTAL_PERIOD[:earth]
  end

  def on_mercury
    seconds / ORIBTAL_PERIOD[:mercury]
  end

  def on_venus
    seconds / ORIBTAL_PERIOD[:venus]
  end

  def on_mars
    seconds / ORIBTAL_PERIOD[:mars]
  end

  def on_jupiter
    seconds / ORIBTAL_PERIOD[:jupiter]
  end

  def on_saturn
    seconds / ORIBTAL_PERIOD[:saturn]
  end

  def on_uranus
    seconds / ORIBTAL_PERIOD[:uranus]
  end

  def on_neptune
    seconds / ORIBTAL_PERIOD[:neptune]
  end
end
