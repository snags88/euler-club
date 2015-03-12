require 'pry'

def bubble_sort(a)

  t = Time.now
  swapped = true
  while swapped == true
    swapped = false
    (a.size - 1).times do |i|
      if a[i] > a[i + 1]
        a[i], a[i + 1] = a[i + 1], a[i]
        swapped = true
      end
    end
  end


  puts "Bubble sort took #{Time.now - t} seconds"
  a
end

def insertion_sort(a)

  t = Time.now
  for i in 1..(a.size - 1)
    # as we iterate through the array...
    key = a[i]
    backwards_i = i

    while a[backwards_i - 1] > key
      # while we're looking for a place to put the active value 
      a[backwards_i] = a[backwards_i - 1]
      backwards_i -= 1
    end

    a[backwards_i] = key

  end

  puts "Insertion sort took #{Time.now - t} seconds"
  a
end

a = []

20.times do
  a << rand(100)
end

puts a

puts bubble_sort(a)
puts insertion_sort(a)