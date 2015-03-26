# Generate a string of randomized alpha-numeric characters of a given length
# For example:
# randomString(8) => "rk2l3jio"

# Resources:
# Ruby Array Class: http://ruby-doc.org/core-2.2.0/Array.html
# http://codereview.stackexchange.com/questions/15958/generating-a-random-alphanumeric-string-succinctly-and-efficiently
# * operator : http://stackoverflow.com/questions/918449/what-does-the-unary-operator-do-in-this-ruby-code
# more on *  : http://pivotallabs.com/ruby-pearls-vol-1-the-splat/

def random_string(num)
  # build "sample" array
  # a-z, A-Z, 0-9

  array = [ ("a".."z"), ("A".."Z"), (0..9)].collect{ |r| r.to_a}.flatten

  password = ""

  num.times { password << array[rand(62)].to_s }

  password
  
end