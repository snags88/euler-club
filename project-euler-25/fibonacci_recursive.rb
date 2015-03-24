
require 'pry'

# The Fibonacci sequence is defined by the recurrence relation:

# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:

#   F1 = 1
#   F2 = 1
#   F3 = 2
#   F4 = 3
#   F5 = 5
#   F6 = 8
#   F7 = 13
#   F8 = 21
#   F9 = 34
#   F10 = 55
#   F11 = 89
#   F12 = 144
#   The 12th term, F12, is the first term to contain three digits.

# What is the first term in the Fibonacci sequence to contain 1000 digits?




def fib(num)
  return  num  if num <=1
  fib(num-1) + fib(num-2)
end



def fib_to_digit_length(digits)
  i = 0
  result = 0
  while result.to_s.length < digits
    i += 1
    result = fib(i)
  end
  puts i
  puts result
end


















time = Time.now
puts "Fib of length 1"
fib_to_digit_length(1)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 2"
fib_to_digit_length(2)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 3"
fib_to_digit_length(3)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 4"
fib_to_digit_length(4)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 5"
fib_to_digit_length(5)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 6"
fib_to_digit_length(6)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 7"
fib_to_digit_length(7)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 8"
fib_to_digit_length(8)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 9"
fib_to_digit_length(9)
puts "#{(Time.now - time)} seconds"
puts "Fib of length 1000"
sleep(8)
puts "STUPID BIG NUMBER"
puts "5EVA seconds"

# Amount of time to calculate fib_to_digit_length for recursively is approximately
# equal to 10 times the time it to for the prior digit
# 9 length is about 1 min. 1000 - 9 = 991. 991 x 10 = 9,910. 9,910 min to calculate
# for 1,000th digit. that's ~6.8 days.

# Make it work, make it right, make it fast becomes irrelevant here.