#!/c/Ruby200/bin/ruby

class Node
  def initialize(name)
    @name = name
    @edges = []
    @visited = false
  end

  def addEdge edge
    @edges << edge
  end

  def isVisited
    @visited
  end

  def mark newVisited
    @visited = newVisited
  end

  def edges
    @edges
  end

  def name
    @name
  end

  def to_s
    ret = "#{@name} -> "
    @edges.each do |edge|
      ret += edge.to_s + ", "
    end

    ret 
  end
end

#puts (Node.new 'A').name
