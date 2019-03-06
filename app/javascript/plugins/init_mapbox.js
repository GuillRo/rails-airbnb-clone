import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

  //  const v1 = new mapboxgl.LngLatBounds(
  //    new mapboxgl.LngLat(60, 46),
   //   new mapboxgl.LngLat(46, 60)
  //  );

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      trackResize: true,
    //  maxBounds: v1,
      scrollZoom: true,
      boxZoom: true
    });


    const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
      new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });


  }

};

export { initMapbox };
