class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.get_stoned

    statues << victim

    statues.shift.get_sober if statues.length > 3
  end
end


class Person
  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def get_stoned
    @stoned = true
  end

  def get_sober
    @stoned = false
  end
end
