class Clearance
  def initialize
    @clearance_items = []
  end

  def sort_by_percent_off
    @clearance_items.sort! { |a, b| a.percent_off <=> b.percent_off }
  end

  def best_deal
    sort_by_percent_off
    @clearance_items.last.name rescue @clearance_items.last
  end

  def <<(item)
    @clearance_items << item
  end

end
