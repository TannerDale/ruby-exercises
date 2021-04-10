class Item
  attr_reader :name, :percent_off
  def initialize(name, price:, discount:)
    @name = name
    @price = price
    @discount = discount
    @percent_off = (@discount.fdiv(@price) * 100).to_i
  end

end
