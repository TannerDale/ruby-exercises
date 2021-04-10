class Wallet
  COINS = {
    quarter: 25,
    dime: 10,
    nickel: 5,
    penny: 1
  }
  attr_reader :cents

  def initialize
    @cents = 0
    @current_coins = []
  end

  def <<(coin)
    @cents += COINS[coin]
    @current_coins << coin
  end

  def take(*args)
    args.each do |coin|
      @cents -= COINS[coin] if @current_coins.include?(coin)
    end
  end

end
