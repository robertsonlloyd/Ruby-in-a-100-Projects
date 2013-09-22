#!/c/Ruby200/bin/ruby

#the algorithm
def sortAlgo arr
  sortPartition arr, 0, arr.length-1
end

def sortPartition arr, beginIdx, finIdx

  #base case
  if finIdx - beginIdx < 2 then
    #do nothing
  elsif finIdx - beginIdx == 1 then
    if arr[finIdx] < arr[beginIdx] then
      tmp = arr[finIdx]
      arr[finIdx] = arr[beginIdx]
      arr[beginIdx] = tmp
    end
  else

    #induction rule
    swaps = 0
    pivotIdx = beginIdx + rand(finIdx - beginIdx)
    pivot = arr[pivotIdx]
    for idx in beginIdx..finIdx
      if arr[idx] < pivot && idx > pivotIdx then
	#puts "UP   SWAP [#{pivot}]++ > #{arr[idx]}"
	arr[pivotIdx] = arr[idx]
	pivotIdx += 1
	arr[idx] = arr[pivotIdx]
	arr[pivotIdx] = pivot

	swaps += 1
      elsif arr[idx] > pivot && idx < pivotIdx then
        #will only be executed once
        #puts "DOWN SWAP #{pivot}<->#{arr[idx]}"
        arr[pivotIdx] = arr[idx]
        arr[idx] = pivot
	pivotIdx = idx

	swaps += 1
      end
    end

    puts
    puts "pivot #{pivot}; idx #{pivotIdx}; swaps #{swaps} in #{beginIdx}..#{finIdx}"
    puts arr.inspect

    #pivot is in it's final resting place [pivotIdx]

    sortPartition arr, beginIdx, pivotIdx-1
    sortPartition arr, pivotIdx+1, finIdx
  end

  arr
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

