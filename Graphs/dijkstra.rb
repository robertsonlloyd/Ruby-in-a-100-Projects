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

def dijkstra(source, target)
  ret = nil
  source.setDistance 0
  unvisited = [source]

  #iterate through all nodes in the connected graph
  begin
    #we will always examine the node with the short distance
    idx = 0
    (1..unvisited.length-1).each do |itor|
      idx = itor if unvisited[itor].distance < unvisited[idx].distance
    end
    
    puts "main dijkstra loop for node #{unvisited[idx].name}"

    head = unvisited[idx]
    head.edges.each do |edge|
      relativeDistance = head.distance + edge.weight
      isNewNode = edge.node.distance == -1

      puts "traverse to #{edge.node.name} d:#{relativeDistance} new? #{isNewNode}"
      if isNewNode || edge.node.distance > relativeDistance then
        
	puts "replace distance #{edge.node.distance} -> #{relativeDistance}"
        #either this is the first time looking at this node
	# or we found a shorter path for it.
        edge.node.setDistance relativeDistance
        
	unvisited << edge.node if isNewNode
      end
    end
    head.mark true

    if head.name == target then
      ret = head
      unvisited = []
    elsif unvisited.length > 0 then
      unvisited.slice! idx
    end
  end while unvisited.length > 0
  ret
end

nodes = setupEdges
shortPath = dijkstra(nodes[0], 'E')

puts "Finished! Distance of #{shortPath.distance} found"
puts "from #{nodes[0]}"
puts "to #{shortPath}"

#puts edges.inspect

