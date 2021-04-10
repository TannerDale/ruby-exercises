class Appointments
  attr_reader :schedule
  def initialize
    @schedule = []
  end

  def earliest
    @schedule.min
  end

  def at(time)
    @schedule << time
  end
end
