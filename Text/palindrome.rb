puts "Give me a string, and I'll check if it's a palindrome."
STDOUT.flush
chars = gets.chomp.split("")
max = chars.length-1
response = "It's a palindrome!"

#Divide max by 2 or you'll reverse the string twice -> original string
0.upto(max/2) do |idx|
  if chars[idx] != chars[max-idx] then
    response = "Sorry, it's not a palindrome"
    break
  end
end

puts response
