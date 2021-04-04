class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    @encounter_counter += 1

    @swings += 1 if human.notices_ogre?
    human.get_hit if @swings.even?
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.wake_up
  end
end


class Human
  attr_accessor :encounter_counter
  attr_reader :name
  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    encounter_counter % 3 == 0
  end

  def get_hit
    @knocked_out = true
  end

  def knocked_out?
    @knocked_out
  end

  def wake_up
    @knocked_out = false
  end
end
