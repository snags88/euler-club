# Problem 10: Summation of primes
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
# Use Sieve of Eratostheses

##### REFACTORED IN GROUP

# step 1: find primes of number

def primes_up_to(num) #=> array of prime numbers
  full_sieve = (1..num).collect { true } #=> array of 'trues'
  search_limit = (num ** 0.5) #=> only need to search to square root of given number

  for i in 2..search_limit
    if full_sieve[i] == true #=> go through each multiple of i and mark it as false
      n = i * 2
      while n <= num
        array[n] = false
        n += i  
      end
    end
  end

  #=> convert sieve into prime_numbers array
  prime_numbers = full_sieve.collect.with_index(1) do |flag, value|
    value if flag
  end

  prime_numbers.shift.compact #=> cleaned array (take out 1, nils)
end

# step 2: sum primes

def sum_array_elements(array)
  array.inject(:+)
end