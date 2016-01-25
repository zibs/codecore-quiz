// Write a function in JavaScript that takes in a number n and returns the first n even numbers.

var returnEvens = function(n) {
  var evenNumbers = [];
  for (var i = 0; i <= n; i++) {
    evenNumbers.push(i * 2);
  }
  // return evenNumbers; // returns as Array
  return evenNumbers.join(", "); // returns as String
};
