# Implement your procedural solution here!
# min = 10,000
# max = 998,001

def palindrome?(num)
  num_a = num.to_s
  num_a.reverse == num_a
end


def largest_palindrome_product
  answer = nil
  998001.downto(10000) do |n|
    if palindrome?(n)
      for divisor in 100..999
        answer ||= n if n % divisor == 0 && (n / divisor).to_s.length == 3
      end
    end
    break if answer
  end
  answer
end