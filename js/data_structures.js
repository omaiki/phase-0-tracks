var colors = ["blue", "green", "yellow", "orange"];
var names = ["joe", "bob", "jane", "doe"];

colors.push("red");
names.push("jill");

// declare a method that takes two arrays
// declare new object
// if statement to compare array.length
// write loop to push name=>colors into new object
// else yell at user

function push_info(name_array, color_array) {
  var horseData = {};
  if (name_array.length === color_array.length) {
   for (var i = 0; i < name_array.length; i++) {
     horseData[name_array[i]] = color_array[i];
     // console.log(horseData);
   }
  } else {
    console.log("Lengths of arrays don't match!");
  }
};

console.log(push_info(names, colors));

function car(make, model, year) {

  this.make = make;
  this.model = model;
  this.year = year;

  this.revItUp = function() {console.log("VROOOOOOOM");};

  console.log("CAR IS BEING BUILT...");
};

var paul = new car("chevy", "impala", 2007);
console.log(paul);
paul.revItUp();

var cheyenne = new car("chrysler", "concorde", 1997)
console.log(cheyenne);
cheyenne.revItUp();

var chrystal = new car("infiniti", "G35", 2007)
console.log(chrystal);
chrystal.revItUp();