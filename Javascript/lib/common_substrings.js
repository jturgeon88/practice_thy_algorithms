// Write a function that takes two strings and returns the length of the longest common substring.
function commonSubstrings(stringOne, stringTwo) {
  // create an array of substrings for both strings
  let subs1 = [];
  for (let i = 0; i < stringOne.length; i++){
    let currSub = stringOne[i];
    subs1.push(currSub);
    for (let j = i + 1; j < stringOne.length; j++){
      currSub = currSub.concat(stringOne[j]);
      subs1.push(currSub);
    }
  }

  subs1 = subs1.sort();

  subs1.forEach(sub => {
    console.log(sub);
    if (stringTwo.includes(sub)){
      return sub.length;
    }
  });
}
module.exports = commonSubstrings;
