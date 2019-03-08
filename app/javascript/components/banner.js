  import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  console.log("get g in there")
  new Typed('#title-main', {
    strings: ["Where to next... "],
    typeSpeed: 95,
    loop: false
  });
}

export { loadDynamicBannerText };
