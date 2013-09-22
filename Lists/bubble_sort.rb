#!/c/Ruby200/bin/ruby

#the algorithm
def sortAlgo arr
  begin
    swapped = nil
    for itor in 0..arr.length-2
      if(arr[itor] > arr[itor+1]) then
        swapped = 1

        tmp = arr[itor]
	arr[itor] = arr[itor+1]
	arr[itor+1] = tmp

        puts "SWAP:#{itor} #{arr.inspect}"
      end
    end
  end while swapped

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

