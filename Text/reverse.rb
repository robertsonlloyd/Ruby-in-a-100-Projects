puts "What string should I reverse?"
STDOUT.flush
chars = gets.chomp.split("")
max = chars.length-1

#Divide max by 2 or you'll reverse the string twice -> original string
0.upto(max/2) do |idx|
  tmp = chars[idx]

  chars[idx] = chars[max-idx]
  chars[max-idx] = tmp
end

puts chars.join
