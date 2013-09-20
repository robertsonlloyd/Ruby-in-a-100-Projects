#this is a comment

# Step 1. Playing Around
=begin
puts 'Hello'
puts 1+2
puts 2 * 3
puts 3 / 2
puts 10 - 11
puts 1.5 / 2.6
puts 2 ** 3
puts 2 << 2
puts 2 || nil
puts 2 && nil
puts 2..5
puts  1 % 3
puts -1 % 3

@variable ||= "default value"
puts @variable
=end

# Step 2. Playing with functions, operators, etc.
=begin
def g *args
  args
end

def f arg
  arg
end

x,y,z = [true, 'two', 1] #parallel assignment let's us do this

if a = f(x) and b = f(y) and c = f(z) then
  d = g(a,b,c)
end

p [x,y,z,a,b,c,d]
#end

# Step 3. Fun with Strings
=begin
  Ruby Strings
  In Ruby, strings are mutable
#=end
p 'Hello World'
p 'I like' + ' Ruby?'
p 'Hello' * 3
p `dir`
system('dir')
=end

# Step 4. Variables

=begin
 Let's do conversions
 .to_i, .to_f, .to_s
#=end

PI = 3.14 # this is a CONSTANT b/c starts with Capital Letter
x,y = 5, '2';
puts x + y.to_i

a = 'Hello '
a <<"World." # appending
a << ' Btw
I love this world.'

=begin
 << is the beginning of a string literal,
 Very similar to Perl!
#=end
puts a
=end


# Step 5. Scope

# $vars beginning with $ are global
# $0 = filename of program
# $: contains directories that Ruby searches when loading external file
# $$ = pid

# Step 6. STDIN & ARGV(?)

=begin
puts "You've woken from a deep slumber.. Where are you?"

#don't forget the flush!
STDOUT.flush
city = gets.chomp #get = get input
                  #chomp the input (remove newline)
puts "Oic, I'm at " + city + "!"

=end

#puts 'What the hell am I? ' + "".class.to_s
#puts 'How about numbers? ' + 0.class.to_s

=begin
rice_on_square = 1  
64.times do |square|  
  puts "On square #{square + 1} are #{rice_on_square} grain(s)"  
  rice_on_square *= 2  
 end  
=end

#puts 'I am in class = ' + self.class.to_s  
#puts 'I am an object = ' + self.to_s  
#print 'The object methods are = '  
#puts self.private_methods.sort  

#5.times { puts "Mice!\n" } # more on blocks later  
#puts "Elephants Like Peanuts".length  

#Step 7. Methods
=begin
def foo arg1='Foo', arg2='Bar', arg3='Baz'

  #this is interpolation: eval expr in a string
  "#{arg1}, #{arg2}, #{arg3}."
end

puts "100 * 5 = #{100 * 5}"
puts foo
puts foo "no"
puts foo 'no', 'yes'
puts foo 'no', 'yes', 'maybe'
=end

# ALIAS. creates new name that ref existing method, operator, global var, or
#  regex backreference ($&, $`, $', $+
# canNOT alias Local vars, instance vars, class vars, or constants.

def foo *my_str
  my_str.inspect
end

puts foo 'hello', 'world'
#OUT: ["hello", "world"]
puts foo
#OUT: []

#Bang (!) Methods!
# Bang modifies objects in-place
