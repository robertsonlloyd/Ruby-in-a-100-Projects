def fib num
  ret = Array.new num
  itor = 0

  if num>0 then
    ret[itor] = 1
    itor += 1
  end
  if num>1 then
    ret[itor] = 2
    itor += 1
  end

  while itor < num do
    ret[itor] = ret[itor-1] + ret[itor-2]
    itor += 1
  end

  ret
end

puts "what is n for fib(n)?"
STDOUT.flush
puts (fib gets.chomp.to_i).inspect

