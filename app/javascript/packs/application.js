// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import 'bootstrap';

import { toggleHistory } from './components/history';
import { newCocktailSetFocus } from './components/new_cocktail_focus';
import { initSweetalert } from '../plugins/init_sweetalert';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here)
  newCocktailSetFocus();
  toggleHistory();
  // delete cocktail sweet alert
  initSweetalert('#swal-del-cocktail', {
    title: "Delete cocktail",
    text: "Are you sure you want to delete this cocktail ?",
    icon: "warning",
    buttons: true,
    dangerMode: true
  }, (value) => {
    if (value) {
      const link = document.querySelector('#del-cocktail');
      link.click();
    }
  });
  // delete dose sweet alert
  initSweetalert('.swal-del-dose', {
    title: "Delete dose",
    text: "Are you sure you want to remove this dose from the cocktail recipe ?",
    icon: "warning",
    buttons: true,
    dangerMode: true
  }, (value) => {
    if (value) {
      const link = document.querySelector('#del-dose');
      link.click();
    }
  });
});
