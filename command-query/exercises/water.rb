class Water
  attr_reader :temperature

  def initialize
    @temperature = 295  # Kelvin
  end

  def heat
    @temperature += 1  # Kelvin
  end

end
