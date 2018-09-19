
puts "Please enter number"
number = gets.chomp.to_i
while number >= 0
  puts number
  number -= 1
end


loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end
