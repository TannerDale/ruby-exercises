class Catalog
  def initialize
    @items = []
  end

  def cheapest
    @items.last.name rescue @items.last
  end

  def <<(item)
    @items << item
  end

  def sort_by_price
    @items.sort { |a, b| a.price <=> b.price }
  end

end
