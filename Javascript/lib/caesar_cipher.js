// Write a function that takes a message and an increment amount and outputs the same letters shifted by that amount in the alphabet.
// Assume lowercase and no punctuation.
// Preserve spaces.
function caesarCipher(plainText, shift) {
  const alphabet = [ 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' ];
  let newMessage = "";

  for (let i = 0; i < plainText.length; i++) {
    let newIdx = ((alphabet.indexOf(plainText[i]) + shift) % 26);
    if (newIdx == -1) {
      newMessage = newMessage.concat(" ");
    } else {
      newMessage = newMessage.concat(alphabet[newIdx]);
    }
  }
  return newMessage;
}
module.exports = caesarCipher;
