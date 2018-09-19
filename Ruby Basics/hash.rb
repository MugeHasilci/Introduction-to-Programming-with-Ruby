=begin
Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's
 built-in select method to gather only immediate family members' names into a new array.
=end

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select {|k,v| k == :sisters || k == :brothers }

 array = immediate_family.values.flatten
 p array



=begin
Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys.
Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
=end

opposites = {positive: "negative", up: "down", right: "left"}
opposites.each_key{ |k| puts k }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

=begin
What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate
this use.
=end

has_value?

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end

=begin
Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact
letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
(etc)
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


result = {}
words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end
