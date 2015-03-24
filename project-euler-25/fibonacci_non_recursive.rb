require 'pry'







def fib(num)
  previous_fib = 0
  current_fib = 1
  num.times do |num|

  	previous_fib, current_fib = current_fib, current_fib + previous_fib
  end
  [previous_fib, num]
end






def fib_digit_length(num)

	answers = [0,0]
	index = 1
	while answers[0].to_s.length < num
		index += 1
		answers = fib(index)
	end
	answers
end








def fib_to_digit_length(num)

	fib_index = -1
	previous_fib = 0
	current_fib = 1

	while current_fib.to_s.length < num
		fib_index += 1
		current_fib, previous_fib = previous_fib, current_fib + previous_fib
	end

	puts fib_index

end



# time = Time.now
# fib_to_digit_length(1000)
# puts "#{(Time.now - time)} seconds"

# time = Time.now
# fib_digit_length(1000)
# puts "#{(Time.now - time)} seconds"


# answer = -1
# previous = 0
# i = 1
# while i.to_s.length < 5
#     answer += 1
#     i, previous = previous, previous + i
# end
# puts answer



time = Time.now
puts "Fib of length 5"
fib_to_digit_length(5)
puts "#{(Time.now - time)} seconds"
time = Time.now
puts "Fib of length 6"
fib_to_digit_length(6)
puts "#{(Time.now - time)} seconds"
time = Time.now
puts "Fib of length 7"
fib_to_digit_length(7)
puts "#{(Time.now - time)} seconds"
time = Time.now
puts "Fib of length 8"
fib_to_digit_length(8)
puts "#{(Time.now - time)} seconds"
time = Time.now
puts "Fib of length 9"
fib_to_digit_length(9)
puts "#{(Time.now - time)} seconds"
time = Time.now
puts "Fib of length 1000"
fib_to_digit_length(1000)
puts "#{(Time.now - time)} seconds"