# Write a program that displays a welcome message, but only after the user enters
# the correct password, where the password is a string that is defined as a constant
# in your program. Keep asking for the password until the user enters the correct password.


Password = "SecreT"

loop do
  puts "Please enter your password:"
  password = gets.chomp
  if password != "SecreT"
    puts "Invalid password!"
  else
    puts "welcome"
  end
  break
end

# OR

PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try == PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'
