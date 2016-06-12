console.log("link to js file is working!");

//event listener on photo to be clicked
  // need function

function addBorder() {
  var photo = document.getElementbyId("lizard-photo");
  photo.style.border= "2 px solid blue";
}

// grab photo and put event-listener on the element
var photo = document.getElementbyId("lizard-photo");

// addevent function can be used on an element
//arguments = (what type of event as a string, then give it code you want to run when it type of event is triggered)
photo.addEventListener("click", addBorder);