import mapboxgl from 'mapbox-gl';

const initMapboxUser = () => {
  const mapElement = document.getElementById('map_user');

  const fitMapToMarkers = (map, marker) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([ marker.lng, marker.lat ]);
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map_user',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const marker = JSON.parse(mapElement.dataset.markers);

    // Create a HTML element for my custom marker
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '25px';
    element.style.height = '25px';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);

    fitMapToMarkers(map, marker);
  }
};

export { initMapboxUser };
