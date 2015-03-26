=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end


#=> Find primes of a given number

def primes_up_to(num) #=> array of prime numbers
flag_array = (0..num).collect{true}

search_limit = (num ** 0.5)

  for i in 2..search_limit
    if flag_array[i] == true
      #=> go through each multiple of i and mark them as false
      j = i * 2
      while j <= num
        flag_array[j] = false
        j += i
      end
    end
  end

  prime_numbers = flag_array.collect.with_index do |flag, value|
    value if flag
  end

  prime_numbers.shift(2)
  prime_numbers.compact #=> [2,3,5,7...]
end

def sum_of_array_elements(array) #=> Sum the number of a given set
  array.inject(:+)
end

start_time = Time.now
n = 2000000
primes_array = primes_up_to(n)
puts sum_of_array_elements(primes_array)
puts Time.now - start_time