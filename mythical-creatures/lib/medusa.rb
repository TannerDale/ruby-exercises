class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    statues << victim
    if statues.length > 3
      statues.shift.stoned = false
    end
  end
end


class Person
  attr_accessor :stoned
  attr_reader :name
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    stoned
  end
end
