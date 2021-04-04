class Wizard
  attr_reader :name
  def initialize(name, bearded = {bearded: true})
    @name = name
    @bearded = bearded
    @spells_cast = 0
  end

  def bearded?
    @bearded[:bearded]
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    @spells_cast < 3
  end

  def cast
    @spells_cast += 1
    "MAGIC MISSILE!"
  end

end
