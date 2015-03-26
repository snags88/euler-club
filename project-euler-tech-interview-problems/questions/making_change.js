// Making Change
// a variation on the Knapsack Problem (http://rosettacode.org/wiki/Knapsack_problem/0-Ruby)

// Given a sum, return an array of coins needed to add up to that sum
// Method should return the optimal change (i.e. least amount of coins involved). 
// You can assume you have an infinite number of coins to work with.

// For example:
// make_change(39)
// => [25, 10, 1, 1, 1, 1]

// Resources
// http://kganser.com/change.html (source)

var coins = [25, 10, 5, 1];

// FUNCTION NOT WORKING YET - see solution in solution folder
var makeChange = function(total, coins) {

  var total = total;

  var map_result = coins.sort(function(a, b){return b-a}).map(function(coin){
    var coinCount = total / coin;

    total %= coin;

    var result = new Array();

    for (var i = 0; i < coinCount; i++){
      result.push(coin);
    }
    return result;
  }); 
  return map_result;
};