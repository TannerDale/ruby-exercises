class Money
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def earn(more_money)
    @amount += more_money
  end

end
