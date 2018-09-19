=begin
We can use the =~ operator to see if we have a match in our regular expression.
Let's say we are looking for the letter "b" in a string "powerball". Here's how we'd
implement this using the =~ operator
=end
#{}"powerball" =~ /b/
#=> 5

def has_a_b?(string)
  if string =~ /b/
    puts "We've a match."
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")

=begin
On top of the =~ operator, we can use the match method to perform regex
comparisons as well. This method returns a MatchData object that describes
the match or nil if there is no match.
=end
/b/.match("powerball")
=> #<MatchData "b">

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
