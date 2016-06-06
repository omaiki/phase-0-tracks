// RELEASE 0 - LONGEST PHRASE

function longestPhrase(input) {
  var longest_phrase = "";
for(var i = 0; i < input.length; i++) {
    if (input[i].length > longest_phrase.length) {
        longest_phrase = input[i];
    }
  }
return longest_phrase;
}
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));

// Release 1

function objectMatch(x,y) {
for(key in x) {
  var matchKey = key;
  var matchValue = x[key];
  for(key in y) {
    if(matchKey == key &&
      matchValue == y[key]) {
      return true;
    }
  }
}
  return false;
}

console.log(objectMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(objectMatch({person: "Oshoke", age:7}, {person: "Emily", age:10}));








