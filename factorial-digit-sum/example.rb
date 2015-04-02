require 'pry'
##########Power Digit Sum #####################
#2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?
#calculate 2 ^ 1000
#split the number into each individual digit
# add them together

def sum_digits_of_number(num)
  #num.to_s.split("").collect {|i| i.to_i}.inject {|sum, i| sum + i}
  num.to_s.chars.map(&:to_i).inject(:+)
end

#################### Problem 20  - Factorial Digit Sum
# n! means n × (n − 1) × ... × 3 × 2 × 1
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def factorial(num)
  # counter = num
  # while counter > 1
  #   counter -= 1
  #   num = num * counter
  # end
  # num
  (1..num).inject(:*)
end

def factorial_sum(num)
  sum_digits_of_number(factorial(num))
end










binding.pry