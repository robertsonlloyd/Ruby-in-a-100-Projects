#!/c/Ruby200/bin/ruby

class Edge
  def initialize(nodeA, nodeB, weight)
    @nodeA = nodeA.to_s
    @nodeB = nodeB.to_s
    @weight = weight.to_i
  end

  def to_s
    "(#{@nodeA}, #{@nodeB}, #{@weight})"
  end
end

