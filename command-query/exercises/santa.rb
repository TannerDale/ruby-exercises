class Santa
  def initialize
    @cookie_count = 0
  end

  def fits?
    @cookie_count <= 2
  end

  def eats_cookies
    @cookie_count += 1
  end

end
