// Get the navbar
const navbar = document.querySelector('.navbar');

// Get the offset position of the navbar
const sticky = navbar.offsetTop;

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add('sticky');
  } else {
    navbar.classList.remove('sticky');
  }
}

// When the user scrolls the page, execute myFunction
window.onscroll = function() {
  myFunction()
};

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
    if (window.pageYOffset >= sticky) {
      navbar.classList.add('sticky');
      navbar.style.backgroundColor = '#333'; // Change the navbar's background color to #333
    } else {
      navbar.classList.remove('sticky');
      navbar.style.backgroundColor = 'transparent'; // Change the navbar's background color to transparent
    }
  }
  