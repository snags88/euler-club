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
}


// Test section
console.log('Last chair is', lastChair(100));