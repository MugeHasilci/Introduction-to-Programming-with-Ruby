# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.

 array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 array.each { |n| puts n }

# 2. Same as above, but only print out values greater than 5.

array.each { |number| puts number if number > 5 }

# 3. Now, using the same array from #2, use the select method to extract all
# odd numbers into a new array.

array.select { |number| puts number if number.odd? }

# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.


array.push(11).unshift(0)


# 5. Get rid of "11". And append a "3"
array = [0,1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11]

array.pop.push(3)

# Get rid of duplicates without specifically removing any one value.

# Does not modify calling object
array.uniq

# Modifies the calling object
array.uniq!

# 6. Create a Hash using both Ruby syntax styles.

hash = {:name => 'bob'} # <= old version
hash = {name: 'bob'} # <= new version

=begin 7. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
 Remove all key:value pairs whose value is less than 3.5
=end
h.delete_if { |key,value| value < 3.5 }

# 8. Can hash values be arrays? Can you have an array of hashes? (give examples)

# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]


=begin 9.
Given the following data structures. Write a program that moves the information
from the array into the empty hash that applies to the correct person.
=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts

# 10. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
contacts= {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
"Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}}

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

=begin
In exercise 9, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over
the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will
probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and
first methods.
=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fields = [:email, :adress, :phone]

contacts.each do |key,value|
  fields.each do |field|
    hash[fields] = contact_data.unshift
  end
end

# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |string|  string.start_with?("s") }
p arr

=begin
Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] →
["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
=end

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a
