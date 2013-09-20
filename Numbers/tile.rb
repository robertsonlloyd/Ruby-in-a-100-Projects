puts "What's the cost per sq. foot?"
STDOUT.flush
cost = gets.chomp.to_f

puts "What's the width of the floor?"
STDOUT.flush
width = gets.chomp.to_f

puts "What's the height of the floor?"
STDOUT.flush
height = gets.chomp.to_f

total_cost = width * height * cost
area = width * height 
puts "The total cost is $#{total_cost} for #{area} square feet"
