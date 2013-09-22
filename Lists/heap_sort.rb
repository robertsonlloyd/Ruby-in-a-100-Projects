#!/c/Ruby200/bin/ruby

#the algorithm
def sortAlgo arr
  #turn the array into a heap, before we can sort it
  arr = heapify arr

  #after the array is heapified,
  #at each level of the heap, children are no larger than their parents

  #pull from the heap until we exhaust it.
  #since the head is always the largest elem, this will give
  #us an ordered list
  (arr.length-1).downto(0).each do |finIdx|
    
    tmp = arr[0]
    arr[0] = arr[finIdx]
    arr[finIdx] = tmp
    siftDown arr, 0, finIdx-1
  end
  arr
end

def heapify arr
  #we only need to iterate through the nodes,
  #because the nodes, compare against their children.
  #hence leafs can be excluded (about half of the list)
  start = (arr.length-2)/2
  while start >= 0 do
    siftDown arr, start, arr.length-1
    start -= 1
  end

  arr
end

def siftDown arr, root, finIdx
  swap = root
  lChildIdx = root*2+1
  rChildIdx = lChildIdx+1

  #always swap with the larger elem to ensure
  #the largest elem bubbles to the top of the heap

  if lChildIdx <= finIdx && arr[swap] < arr[lChildIdx] then
    swap = lChildIdx
  end
  if rChildIdx <= finIdx && arr[swap] < arr[rChildIdx] then
    swap = rChildIdx
  end

  #perform swap
  if root != swap then
    tmp = arr[root]
    arr[root] = arr[swap]
    arr[swap] = tmp
    siftDown arr, swap, finIdx
  end
end

#Step 1. Build initial array
input = []
STDIN.each do |line|
  input << line.to_i
end

puts "INPUT  #{input.inspect}"

#Step 2. Sort
output = sortAlgo input

#Step 3. emit the new list
puts "OUTPUT #{output.inspect}"

puts "Complete!"

