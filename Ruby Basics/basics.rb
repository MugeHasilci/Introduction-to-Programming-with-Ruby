=begin
Using a while loop, print 5 random numbers between 0 and 99. The code below s
hows an example of how to begin solving this exercise.


numbers = []

while numbers.length < 5
   numbers << rand(100)
end

puts numbers
=end

count = 10

until count == 0
  puts count
  count -= 1
end

count = 0
until count > 10
  puts count
   count += 1
 end
# Other solution with while
 count = 0
 while true do
   if count < 10
     count += 1
     puts count
   end
  end

# ----------
numbers = [7, 9, 13, 25, 18]

count = 0
until count = numbers.size
  puts numbers[count]
  count += 1
end

#The code below shows an example of a for loop. Modify the code so that it only
#outputs i if i is an odd number.


for i in 1..100
  puts i if  i.odd?
end
# Your friends just showed up! Given the following array of names, use a for loop
# to greet each friend individually.
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for i in friends
  puts "Hello #{i}!"
end

# Write a loop that prints numbers 1-5 and whether the number is even or odd.

count = 1
loop do
 if count.even?
   puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end
  break if count == 5
  count += 1
end

#Modify the following code so that the loop stops if number is between 0 and 10.
loop do
  number = rand(100)
  puts number
  break if number >= 0 and number <= 10
end

=begin
The code below asks the user "What does 2 + 2 equal?" and uses #gets to
retrieve the user's answer. Modify the code so "That's correct!" is printed
and the loop stops when the user's answer equals 4. Print
"Wrong answer. Try again!" if the user's answer doesn't equal 4.
=end

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  end
  puts "Wrong answer. Try again!"
end

=begin
Modify the code below so that the user's input gets added to the numbers array.
 Stop the loop when the array contains 5 numbers.
=end

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  break if numbers.size == 5
  numbers << input
end
puts numbers

#given the array below, use loop to remove and print each name. Stop the loop
#once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
puts names.shift
break if names.empty?
end

puts names

#The method below counts from 0 to 4. Modify the block so that it prints the
#current number and stops iterating when the current number equals 2.

5.times do |index|
  puts index
  break id index == 2
end
