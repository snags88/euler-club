require 'pry'
#Calculating Large Exponents http://stackoverflow.com/questions/1758669/large-exponents-in-ruby
def sum_digits_of_number(num)
  #split a number into each of it's digits
  #convert into an array of numbers
  #sum the array
  #num.to_s.split("").collect{|i| i.to_i}.inject(:+)
  num.to_s.chars.collect(&:to_i).inject(:+)
end
