$(document).ready(function(){

//RELEASE 0:
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 1:
  //Add code here to select elements of the DOM
var bodyElement = $('body');

//RELEASE 2:
  // Add code here to modify the css and html of DOM elements
$('h1').css({'color': 'aqua','border': '1px solid black', 'visibility': 'visible'});
$('.mascot').html('Woodchucks');

//RELEASE 3: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'http://3.bp.blogspot.com/_E-2iOC9hoPg/TVGxI6P9fDI/AAAAAAAAATg/3CmSwYcbZ-M/s1600/woodchuck1P4268846.jpg')
});

$('img').on('mouseleave', function(e){
  $(this).attr('src', 'logo.jpg')
});

//RELEASE 4 : Experiment on your own






})  // end of the document.ready function: do not remove or write DOM manipulation below this.
