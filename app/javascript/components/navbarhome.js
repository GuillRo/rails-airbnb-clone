const initUpdateNavbarHomeOnScroll = () => {

  const navbarhome = document.querySelector('.navbar-wagon-home');
  if (navbarhome) {
    //console.log("found .navbar-wagon class");
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 80) {
        //console.log("Scrolling up or down");
        navbarhome.classList.add('navbar-wagon-home-scroll');
      } else {

        //console.log("Back to top");
        navbarhome.classList.remove('navbar-wagon-home-scroll');

      }
    });


  }



};

console.log("hello from navbarhome.js");

export { initUpdateNavbarHomeOnScroll };
