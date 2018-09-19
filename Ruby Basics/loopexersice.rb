
=begin
Write a while loop that takes input from the user,
performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
=end
x = ""
while x != "STOP" do
  puts "What is your name?"
  name = gets.chomp
  puts "What is your surname"
  surname = gets.chomp
  puts "what is your date of birth"
  age = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end

=begin
Use the each_with_index method to iterate through an array of your creation that
prints each index and value of the array.
=end

top_five_games = ["mario brothers",
                  "excite bike",
                  "ring king",
                  "castlevania",
                  "double dragon"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}"
end

=begin
Write a method that counts down to zero using recursion.
=end

puts "Chose a number"
number = gets.chomp.to_i

while number >= 0
  puts number
  number -=1
end

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(0)
