def nextPrime num, facts
  while 1 do
    num += 1
    break if isPrime num, facts
  end

  num
end

def isPrime num, facts
  ret = 1
  itor = 0
  while itor < facts.length do
    puts num.to_s + "% " + facts[itor].to_s + " = " + (num % facts[itor]).to_s;
    if num % facts[itor] == 0 then
      ret = nil
      break
    end

    itor += 1
  end

  ret
end

factors = [2]
number = 2
while 1 do
  number = nextPrime number, factors
  
  puts 'Next Prime: ' + number.to_s
  factors.push number
  puts factors.inspect
  puts 'Continue? (Type "n" to exit)'

  break if gets.chomp == 'n'
end
