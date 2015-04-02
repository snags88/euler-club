/**

Seat Circle: 
a variation on the classic "Josephus Problem": http://rosettacode.org/wiki/Josephus_problem)

Input: 100 chairs in a circle, labeled from 1 to 100
Condition: 
- Pattern of change is that seat 1 is asked to leave, seat 2 is asked to stay, seat 3 is asked to leave...
- Pattern continues of skipping one and asking one to leave till only one is left
Output: Return the last person left

Resources: 
_.range : http://underscorejs.org/#range
.splice : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice
Javascript range function: http://stackoverflow.com/questions/3895478/does-javascript-have-a-method-like-range-to-generate-an-array-based-on-suppl

**/

function lastChair(numberOfChairs) {
  var index = 0,
  chairs = Array.apply(null, Array(numberOfChairs)).map(function (_, i) {return i+1;});
  // chairs = _.range(numberOfChairs); // builds an array where array.length === numberOfChairs

  while (chairs.length > 1) {
    chairs.splice(index, 1)
    index = ++index % chairs.length;
  }
  return chairs[0];
}


// Test section
console.log('last chair is', lastChair(100));