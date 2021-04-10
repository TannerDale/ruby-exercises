class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.size
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(candy)
    @candies.any? { |in_bag| in_bag.type == candy }
  end

  def grab(candy)
    grabbed = @candies.detect { |in_bag| in_bag.type == candy }
    @candies.delete(grabbed)
  end

  def take(amount)
    taken = @candies.pop(amount)
    taken.size > 1 ? taken : taken.first
  end

end
