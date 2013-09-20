while 1 do
  puts "What number would you like me to find prime factors of?"
  STDOUT.flush

  num = gets.chomp.to_i
  break if num < 1

  factors = [1]
  itor = 2

  while itor < num do
    if num % itor == 0 then
      factors << itor
      num /= itor
    else
      itor += 1
    end
  end

  factors << num if num != 1

  puts "These are the factors"
  puts factors.inspect
end

puts "Thanks for playing! Exiting... "

