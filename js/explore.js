// Function takes a string as a paramater and reverses string

  // declare Function with string parameter
  // For each string:
      // split into an array
      // reverse order of array
      // join back into a string
      // print reversed string

function reverseString(string) {
  var newString = string.split('').reverse().join('');
  // testing to see if code is working within function by printing
  console.log(newString);
  // store value for when function is called, variable not necessarily needed, can put 'return' on line 11 instead of variable
  return newString;
}


var reverseHello = reverseString("hello");
console.log(reverseHello);
console.log((reverseHello) + "Oshoke");





