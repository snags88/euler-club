require 'pry'
#http://rosettacode.org/wiki/Factorial#Ruby
#https://www.mathsisfun.com/combinatorics/combinations-permutations.html - a website for kids about factorials - used to calculate permutations

#iterates using a 'while' loop
def factorial(num)
  #for every number 'i' from 'num' to i, multiply i by the product up to that point
  #10! = 10 * 9 * 8 * 7... = 90 * 8 * 7 = 720 * 7...
  i = num - 1
  while i > 1 #don't need to run while i is = 1
    num = num * i
    i -=1
  end
  num
end

# Recursive
def factorial_recursive(n)
  n.zero? ? 1 : n * factorial_recursive(n - 1)
end

#iterates using inject - cool blog post on inject http://blog.jayfields.com/2008/03/ruby-inject.html
def factorial_inject(num)
  (1..num).inject(:*)
end

binding.pry