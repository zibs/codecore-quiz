// Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

var isPrime = function(n) {
  for (var i = n - 1 ; i >= 2; i--) {
    if (n % i === 0 ) {
      return false;
    }
  }
  return true;
};
