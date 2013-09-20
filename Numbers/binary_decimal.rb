#constants
BINARY_TYPE = 1
DECIMAL_TYPE = 2

def promptConversionType
  puts "Do you want to convert (1) Binary to Decimal?"
  puts "Or you want to convert (2) Decimal to Binary?"

  gets.chomp.to_i
end

def getBinary
  puts "Okay! What's the binary number? (little endian)"
  gets.chomp
end

def convertToDec bin
  dec = 0
  if bin =~ /^[01]+$/ then
    itor = 0

    bin.split("").each do |i|
      dec += i.to_i << itor
      itor += 1
    end
  end

  dec
end

def getDecimal
  puts "Okay! What's the (decimal) number?"
  gets.chomp.to_i
end

def convertToBin dec
  bin = ""
  shif = 0

  while 1 do
    mask = 1 << shif
    
    if(dec & mask != 0) then
      bin += "1"
    else
      bin += "0"
    end

    shif += 1
    break if 1<< shif > dec
  end

  bin
end

#begin MAIN

type = promptConversionType

if type == BINARY_TYPE then
  puts ' -> ' + (convertToBin getDecimal)
else
  if type == DECIMAL_TYPE then
    puts ' -> ' + (convertToDec getBinary).to_s
  else 
    puts 'Invalid Response. Type (1) or (2) for your conversion type'
  end
end

