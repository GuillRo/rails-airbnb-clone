import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { initUpdateNavbarHomeOnScroll } from '../components/navbarhome';
initUpdateNavbarHomeOnScroll();

// console.log("hello from application.js");

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import {loadDynamicBannerText} from "../components/banner";
loadDynamicBannerText()

initMapbox();


