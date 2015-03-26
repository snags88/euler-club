def largest_palindrome_product
  range = 100..999
  products = []
  palindromes = []

  range.each do |x|
    range.each do |y|
      products << x*y
    end
  end

  products.select { |product| product.to_s == product.to_s.reverse }.max
end

#=> good reference: http://codereview.stackexchange.com/questions/74881/project-euler-problem-4-in-ruby