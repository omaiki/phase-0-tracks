//Release 0

function longestPhrase(input) {
  var longest = "";
for(var i = 0; i < input.length, i++) {
    if (input[i].length > longest.length) {
        longest = input[i];
    }
  }
return longest;
}
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));

