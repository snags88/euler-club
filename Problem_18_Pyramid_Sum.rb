require 'pry'

class PyramidSum

  @@string = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

  def initialize
    @array = @@string.split("\n").collect{|row| row.split(" ").collect(&:to_i)}
  end

  def traverse_pyramid
    sum_array = @array[0]
    for n in 1...(@array.length)
      sum_array = combine_arrays(sum_array, @array[n])
    end
    puts sum_array.max
  end

  def combine_arrays(top_row, bottom_row)
    largest_sum_array = bottom_row.dup
    top_row.each_with_index do |num, i|
      (largest_sum_array[i] = num + bottom_row[i]) if (num + bottom_row[i]) > largest_sum_array[i]
      (largest_sum_array[i + 1] = num + bottom_row[i + 1]) if (num + bottom_row[i + 1]) > largest_sum_array[i + 1]
    end
    largest_sum_array
  end

end

pyramid = PyramidSum.new
pyramid.traverse_pyramid