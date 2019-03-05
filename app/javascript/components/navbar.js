const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    //console.log("found .navbar-wagon class");
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 80) {
        //console.log("Scrolling up or down");
        navbar.classList.add('navbar-wagon-scroll');
      } else {

        //console.log("Back to top");
        navbar.classList.remove('navbar-wagon-scroll');

      }
    });
  }
};

console.log("hello from navbar.js");

export { initUpdateNavbarOnScroll };
