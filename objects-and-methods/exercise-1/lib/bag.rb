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

end
