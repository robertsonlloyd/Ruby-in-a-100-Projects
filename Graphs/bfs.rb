#!/c/Ruby200/bin/ruby

require_relative './Node'
require_relative './DirectionalEdge'

def setupEdges
  #graph from: http://maxburstein.com/blog/introduction-to-graph-theory-finding-shortest-path/
  #graph pic: http://i.imgur.com/acI5bOW.png

  nodeA = Node.new 'A'
  nodeB = Node.new 'B'
  nodeC = Node.new 'C'
  nodeD = Node.new 'D'
  nodeE = Node.new 'E'
  nodeF = Node.new 'F'
  nodeG = Node.new 'G'
  nodeH = Node.new 'H'

  nodeY = Node.new 'Y'
  nodeZ = Node.new 'Z'
  nodeY.addEdge DirectionalEdge.new nodeZ, 1
  nodeZ.addEdge DirectionalEdge.new nodeY, 1

  nodeA.addEdge DirectionalEdge.new nodeB, 7
  nodeB.addEdge DirectionalEdge.new nodeA, 7
  nodeA.addEdge DirectionalEdge.new nodeC, 8
  nodeC.addEdge DirectionalEdge.new nodeA, 8
  
  nodeC.addEdge DirectionalEdge.new nodeG, 4
  nodeG.addEdge DirectionalEdge.new nodeC, 4
  nodeC.addEdge DirectionalEdge.new nodeF, 6
  nodeF.addEdge DirectionalEdge.new nodeC, 6

  nodeG.addEdge DirectionalEdge.new nodeF, 9
  nodeF.addEdge DirectionalEdge.new nodeG, 9

  nodeB.addEdge DirectionalEdge.new nodeF, 2
  nodeF.addEdge DirectionalEdge.new nodeB, 2

  nodeF.addEdge DirectionalEdge.new nodeD, 8
  nodeD.addEdge DirectionalEdge.new nodeF, 8

  nodeF.addEdge DirectionalEdge.new nodeH, 3
  nodeH.addEdge DirectionalEdge.new nodeF, 3

  nodeH.addEdge DirectionalEdge.new nodeE, 1
  nodeE.addEdge DirectionalEdge.new nodeH, 1

  [nodeA, nodeB, nodeC, nodeD, nodeE, nodeF, nodeG, nodeH]
end

def bfs(source, target)
  ret = nil
  queue = [source]
  source.mark true

  begin
    node = queue.shift
    
    puts "visit #{node.name}"
    if node.name == target then
      ret = node
      queue = []
    else
      node.edges.each do |visit|
        if not visit.node.isVisited then
          visit.node.mark true
	  queue << visit.node
	end
      end
    end
  end while queue.length > 0

  ret
end

nodes = setupEdges
puts bfs(nodes[0], 'H').to_s

#puts edges.inspect
