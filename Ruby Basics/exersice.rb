=begin
Write a program that uses a hash to store a list of movie titles with the year
they came out. Then use the puts command to make your program print out the year
of each movie to the screen. The output for your program should look something like
this.
=end

movies = { black_panter: 2018,
  the_god_father: 1972,
  get_out: 2017}

puts movies[:black_panter]
puts movies[:the_god_father]
puts movies[:get_out]

=begin
Use the dates from the previous example and store them in an array. Then make
your program output the same thing as exercise 3.
=end

dates = [2018, 1972, 2017]
puts dates[0]
puts dates[1]
puts dates[2]
