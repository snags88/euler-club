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


# target_sum = 39
coins = [1,10,5,25]

def make_change(total, coins)
  # subtract coins from total
  # collect

  coins.sort.reverse.collect do |coin|

    # check each coin
    # start with highest coin
    # subtract that coin from total, continue iterating

    coin_count = total/coin
    # x = 39/25
    # x = 1


    total = total % coin

    total %= coin
    #total = 39/25 => 14

    Array.new(coin_count){coin} #=> [25], [10], [1,1,1,1]

end.flatten
