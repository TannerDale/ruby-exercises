class Dragon
  attr_reader :name, :color, :rider, :gold
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @times_eaten = 0
    @gold = 0
  end

  def hungry?
    @times_eaten < 3
  end

  def eat
    @times_eaten += 1
  end

  def steal
    self.hungry? ? "Too hungry, cannot steal." : @gold += 250
  end

end
