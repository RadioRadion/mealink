import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('cooker_search');
  console.log(addressInput);
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
