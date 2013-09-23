#!/c/Ruby200/bin/ruby

class DirectionalEdge
  def initialize(node, weight)
    @node = node
    @weight = weight
  end

  def node
    @node
  end

  def weight
    @weight
  end

  def to_s
    "#{@node.name} (w:#{@weight})"
  end
end

