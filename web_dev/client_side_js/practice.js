console.log("The link to js file is working!");
function blueThat() {
  var text = document.getElementById('about-my-pet');
 text.style.color= "blue";
};

//event listener on photo to be clicked
// need function

function addBorder(event) {
  console.log("click example...it happened! Here it is:")
  console.log(event)
  event.target.style.border = "3px solid blue";
  };

    // grab photo and put event-listener on the element
var photo = document.getElementById("lizard-photo");
    //arguments = (what type of event as a string, then give it code you want to run when it type of event is triggered)
photo.addEventListener("click", addBorder);

// example with font changing function
var text = document.getElementById("about-my-pet");
text.addEventListener("click", blueThat);




