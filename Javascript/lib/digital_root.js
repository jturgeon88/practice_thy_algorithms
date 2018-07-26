// Write a method, digitalRoot(number).
// It should sum the digits of a positive integer.
// If it is greater than or equal to 10, sum the digits of the resulting number.
// Keep repeating until there is only one digit in the result, called the "digital root".
// Do not use string conversion within your method.
function digitalRoot(number) {
  // base case:
  if (number < 10) {
    return number;
  }

  // inductive step:
  let sum = (number % 10) + digitalRoot((number - (number % 10))/10);

  if (sum < 10) {
    return sum;
  } else {
    return digitalRoot(sum);
  }


}
module.exports = digitalRoot;
