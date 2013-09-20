def fib num
  ret = 0
  if num > 2 then
    ret = fib(num-1) + fib(num-2)
  else
    ret = num
  end

  ret
end

while 1 do
  puts "What is n for fib(n)?"
  STDOUT.flush

  puts fib gets.chomp.to_i
end

