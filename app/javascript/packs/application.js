import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initUpdateNavbarHomeOnScroll } from '../components/navbarhome';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import {loadDynamicBannerText} from "../components/banner";

initUpdateNavbarOnScroll();
initUpdateNavbarHomeOnScroll();

if( document.getElementById('#title-main')) {
  loadDynamicBannerText();
}
initMapbox();


