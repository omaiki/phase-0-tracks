// put these in HTML files
// <script src="jquery-3.0.0.min.js"></script>
// <script src="jquery-practice.js"></script>
//SYNTAX: $(selector).action()


// test button minimizes all the players listed for teams on html page
$(document).ready(function(){
    $("#1").click(function(){
        $("li").hide();
    });
});

