# Making Change
# a variation on the Knapsack Problem (http://rosettacode.org/wiki/Knapsack_problem/0-1#Ruby)

# Given a sum, return an array of coins needed to add up to that sum
# Method should return the optimal change (i.e. least amount of coins involved). 
# You can assume you have an infinite number of coins to work with.

# For example:
# make_change(39)
# => [25, 10, 1, 1, 1, 1]

# Resources
# source: http://rubyquiz.com/quiz154.html
# Ruby Array Class: http://ruby-doc.org/core-2.2.0/Array.html

coins = [1,10,5,25]

def make_change(total, coins)

  # sort coins array and order largest to smallest
  # then iterate over each coin
  coins.sort.reverse.collect do |coin| 

    # how many of this specific coin can fit inside total without going over?
    coin_count = total/coin  #=> 39/25 = 1; coin_count = 1

    # set total equal to remainder of sum % coin
    total %= coin  # 39 %= 25 => 14

    # create new array of size coin_count, object(s): coin
    Array.new(coin_count){coin} 

  end.flatten #=> flatten arrays, return single array
end



