while 1 do
  puts "What number would you like me to find prime factors of?"
  STDOUT.flush

  num = gets.chomp.to_i
  if num < 1 then
    break
  end

  factors = [1]
  itor = 2

  while itor < num do
    if num % itor == 0 then
      factors.push itor
      num /= itor
    else
      itor += 1
    end
  end

  if num != 1 then
    factors.push num
  end

  puts "These are the factors"
  puts factors.inspect
end

puts "Thanks for playing! Exiting... "

