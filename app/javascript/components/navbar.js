const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    //console.log("found .navbar-wagon class");
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight - (window.innerHeight + 100)) {
        //console.log("Scrolling up or down");
        navbar.classList.add('navbar-wagon-scroll');
      } else {

            if(window.scrollY == window.scrollY(0,0)) {
                navbar.classList.remove('navbar-wagon-scroll');
            }
            else {

        //console.log("Not Scrolling");
        navbar.classList.remove('navbar-wagon-scroll');
      }
      }
    });
  }
};

console.log("hello from navbar.js");

export { initUpdateNavbarOnScroll };
