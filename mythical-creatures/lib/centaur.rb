class Centaur
  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @activity_count = 0
  end

  def shoot
    @activity_count += 1
    if !self.cranky? && @standing
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    @activity_count += 1
    @standing ? "Clop clop clop clop!" : "NO!"
  end

  def cranky?
    @activity_count >= 3
  end

  def stand_up
    @standing = true
  end

  def standing?
    @standing
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def rested
    @activity_count = 0
  end

  def sleep
    if @standing
      "NO!"
    else
      self.rested
      "Goodnight!"
    end
  end

  def drink_potion
    if @standing
      if self.cranky?
        self.rested
        "#{@name} is now rested and not cranky."
      else
        "#{@name} is now sick."
      end
    else
      "Cannot drink while laying."
    end
  end
end
