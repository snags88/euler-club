# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.


# To solve this problem user Sieve of Eratosthenes.
# The basis is to go through min through limit numbers and eliminating incremental values.

def primes_up_to(max)
  repository = (0..max).collect{true} #=> Create flag array
  limit = (max ** 0.5) #=> establish search limit

  for index in 2..limit #=> search through flag aray
    next if !repository[index]
    num = (index * 2)
    while num <= max #=> unflag multiples of primes
      repository[num] = false
      num += index
    end
  end

  # => convert numbers into arrays
  primes = repository.collect.with_index do |flag, value|
    value if flag
  end

  # return cleaned array
  primes.shift
  primes.shift
  primes.compact
end

# puts 'input max number'
x = 2000000
puts primes_up_to(x).inject(:+)
