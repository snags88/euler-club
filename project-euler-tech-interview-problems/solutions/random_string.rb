# Generate a string of randomized alpha-numeric characters of a given length
# For example:
# randomString(8) => "rk2l3jio"

# Resources:
# Ruby Array Class: http://ruby-doc.org/core-2.2.0/Array.html
# http://codereview.stackexchange.com/questions/15958/generating-a-random-alphanumeric-string-succinctly-and-efficiently

# => returns max of 62 characters
def random_string_limited(num)
  array = [('a'..'z'), ('A'..'Z'), (0..9)].map { |n| n.to_a }.flatten
  array.shuffle[0..num-1].join
end

# => returns array of any given length
def random_string_unlimited(num)
  Array.new(num){[*'0'..'9', *'a'..'z', *'A'..'Z'].sample}.join
end


###### TEST ######

puts 'random_string_limited(8) =>'; sleep(2)
puts '"'+random_string_limited(8)+"\"\n"
puts "("+random_string_limited(8).length.to_s+" characters)"

puts "\nrandom_string_limited(62) =>"; sleep(2)
puts '"'+random_string_limited(62)+"\"\n"
puts "("+random_string_limited(62).length.to_s+" characters)"

puts "\nThis function maxes out at 62 characters (lame).\n"; sleep(2)

puts "\nrandom_string_limited(100) =>"; sleep(2)
puts '"'+random_string_limited(100)+"\"\n"
puts "("+random_string_limited(100).length.to_s+" characters)"

puts "\nSee? I wanted 100 characters...C'MON.\n"; sleep(2)
puts "\nLet's try the unlimited version.\n"; sleep(2)

puts "\nrandom_string_unlimited(100) =>"; sleep(2)
puts '"'+random_string_unlimited(100)+"\"\n"
puts "("+random_string_unlimited(100).length.to_s+" characters)"

puts "\nrandom_string_unlimited(1000) =>"; sleep(2)
puts '"'+random_string_unlimited(1000)+"\"\n"
puts "("+random_string_unlimited(1000).length.to_s+" characters)"

puts "\nrandom_string_unlimited(5000) =>"; sleep(2)
puts '"'+random_string_unlimited(5000)+"\"\n"
puts "("+random_string_unlimited(5000).length.to_s+" characters)"

puts "\nThat's more like it."