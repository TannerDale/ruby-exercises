class Clock
  attr_reader :time

  def initialize
    @time = 6
  end

  def wait
    @time += 1
    twelve_hour_format
  end

  def twelve_hour_format
    if @time > 12
      @time -= 12
    end
  end

end
