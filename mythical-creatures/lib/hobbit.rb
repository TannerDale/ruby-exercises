class Hobbit
  attr_accessor :age
  attr_reader :name, :disposition

  def initialize(name, disposition = "homebody")
    @name = name
    @age = 0
    @disposition = disposition
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age < 101 && @age > 32
  end

  def old?
    @age >= 101
  end

  def has_ring?
    ring_bearer = "frodo"
    @name.downcase == ring_bearer
  end

  def is_short?
    true
  end

end
