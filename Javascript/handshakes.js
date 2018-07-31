function handshakes(people) {
  let count = 0;
  for (let i = 0; i < people.length; i++) {
    for (let j = i + 1; j < people.length; j++) {
      count++;
    }
  }

  return count;
}

const people = ['john', 'joe', 'jill', 'jane', 'jack', 'james', 'jorge', 'jaime', 'jasper', 'jim'];
