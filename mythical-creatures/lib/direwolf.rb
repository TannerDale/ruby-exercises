class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if stark.location == home && @starks_to_protect.length < 2
      @starks_to_protect << stark
      stark.safe = true
    end
  end

  def hunts_white_walkers?
    @starks_to_protect.empty?
  end

  def leaves(stark)
    begin
      @starks_to_protect.delete(stark).safe = false
    rescue
      stark
    end
  end

end


class Stark
  attr_accessor :safe
  attr_reader :name, :location, :house_words
  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @safe = false
    @house_words = "Winter is Coming"
  end

  def safe?
    @safe
  end

end
