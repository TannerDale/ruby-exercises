class Children
  def initialize
    @the_children = []
  end

  def <<(child)
    @the_children << child
  end

  def eldest
    @the_children.max_by { |child| child.age }
  end

end
