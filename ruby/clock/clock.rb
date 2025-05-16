class Clock
  attr_reader :hour, :minute

  def initialize(**time_hash)
    @hour = time_hash[:hour]
    @minute = time_hash[:minute]
    adjust_time
  end

  def adjust_time
    adjust_minute_underflow if !@minute.nil?
    adjust_minute_overflow if !@minute.nil?
    adjust_hours
    adjust_minutes
  end

  def adjust_hours
    @hour = (@hour || 0) % 24
  end

  def adjust_minutes
    @minute = (@minute || 0) % 60
  end

  def adjust_minute_underflow
    until @minute >= 0
      if @hour.nil?
        @hour = 0
      end
      @hour -= 1
      @minute += 60
    end
  end

  def adjust_minute_overflow
    while @minute >= 60
      if @hour.nil?
        @hour = 0
      end
      @hour += 1
      @minute -= 60
    end
  end

  def +(clock)
    self.class.new(hour: @hour + clock.hour,
             minute: @minute + clock.minute)
  end

  def -(clock)
    self.class.new(hour: @hour - clock.hour,
             minute: @minute - clock.minute)
  end

  def ==(clock)
    @hour == clock.hour && @minute == clock.minute
  end

  def to_s
    "%02d" % hour + ":" + "%02d" % minute
  end
end
