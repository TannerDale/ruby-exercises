class Werewolf
  attr_reader :name, :location
  def initialize(name, location = nil)
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = true
  end

  def consume!(victim)
    if @human
      "Cannot consume while human."
    elsif @wolf
      @hungry = false
      victim.status = :dead
      "#{victim} has been consumed."
    end
  end

end
