class Yak
  attr_reader :hairy
  def initialize
    @hairy = true
  end

  def shave
    @hairy = false
  end

  def hairy?
    hairy
  end
end
