class Cupcakes
  def initialize
    @variants = []
  end

  def sweetest
    @variants.first
  end

  def <<(variant)
    @variants << variant
    @variants.sort { |a, b| b.sugar <=> a.sugar }
  end

end
