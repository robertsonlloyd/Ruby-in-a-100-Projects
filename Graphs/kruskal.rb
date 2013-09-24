#!/c/Ruby200/bin/ruby

require_relative './Edge'

def setupEdges
  #graph from: http://maxburstein.com/blog/introduction-to-graph-theory-finding-shortest-path/
  #graph pic: http://i.imgur.com/acI5bOW.png
  arr = []
  arr << Edge.new('A', 'B', 7) 
  arr << Edge.new('A', 'C', 8) 
  arr << Edge.new('B', 'F', 2) 
  arr << Edge.new('C', 'F', 6) 
  arr << Edge.new('C', 'G', 4) 
  arr << Edge.new('G', 'F', 9) 
  arr << Edge.new('D', 'F', 8) 
  arr << Edge.new('F', 'H', 3) 
  arr << Edge.new('E', 'H', 1) 
  arr << Edge.new('A', 'B', 7) 

  #let's have an edge disconnected from the graph
  #arr << Edge.new('Y', 'Z', 1)
  arr
end

def kruskal(edges)
  min_span = []

  min_span
end

edges = setupEdges

puts kruskal(edges).inspect
