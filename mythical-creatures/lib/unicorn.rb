class Unicorn
  attr_reader :name

  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  def silver?
    @color == "silver"
  end

  def say(message)
    "**;* #{message} **;*"
  end

  def color
    @color
  end

end
