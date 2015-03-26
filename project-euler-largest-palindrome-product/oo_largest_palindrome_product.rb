class LargestPalindromeProduct

  def get_products
    range = 100..999
    products = []

    range.each do |x|
      range.each do |y|
        products << x*y
      end
    end

    products
  end

  def get_palindromes
    get_products.select { |product| product.to_s == product.to_s.reverse }
  end

  def answer
    get_palindromes.max
  end

end