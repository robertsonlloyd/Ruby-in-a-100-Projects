#!/c/Ruby200/bin/ruby

#the algorithm
def mergeSort(arr, lo=0, hi=arr.length-1)
  sorted = []

  if hi - lo > 1 then
    #divide
    mid = lo + ((hi-lo)/2.0).ceil

    arr1 = mergeSort arr, lo, mid
    arr2 = mergeSort arr, mid+1, hi

    #merge
    while arr1.length > 0 && arr2.length > 0 do
      #do this while we still have elems in both arrs
      if arr1[0] < arr2[0] then
        sorted << arr1.shift
      else
        sorted << arr2.shift
      end
    end

    #one of the arrs was exhausted
    #simply append the rest of the other arr onto sorted
    arr1.each do |elem|
      sorted << elem
    end
    arr2.each do |elem|
      sorted << elem
    end
  elsif hi - lo == 1 then
    if arr[lo] > arr[hi] then
      sorted << arr[hi]
      sorted << arr[lo]
    else
      sorted << arr[lo]
      sorted << arr[hi]
    end
  elsif hi - lo == 0 then
    sorted << arr[lo]
  end

  puts "mergeSort #{lo},#{hi} sorted: #{sorted.inspect}" if sorted.length > 0
  sorted
end

#Step 1. Build initial array
input = []
STDIN.each do |line|
  input << line.to_i
end

puts "INPUT  #{input.inspect}"

#Step 2. Sort
output = mergeSort input

#Step 3. emit the new list
puts "OUTPUT #{output.inspect}"

puts "Complete!"

