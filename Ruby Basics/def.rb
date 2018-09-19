def add_three(n)
  n + 3
end
add_three(5).times { puts 'This sould print 8 times'}

def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end
add_three(5).times { puts 'This sould print 8 times'}

=begin
Write a program that prints a greeting message. This program should contain
a method called greeting that takes a name as its parameter and returns a string.
=end

def greet(name)
   "Hello #{name}"
end

puts greet("muge")

=begin
Write a program that includes a method called multiply that takes two arguments
and returns the product of the two numbers.
=end

def multiply (a,b)
  a*b
end

def scream(words)
  words = words + "!!!!"
  puts words
end

p scream("Yippeee")
