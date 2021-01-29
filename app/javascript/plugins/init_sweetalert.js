import { Button } from 'bootstrap';
import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButtons = document.querySelectorAll(selector);
  if (swalButtons) { // protect other pages
    swalButtons.forEach(btn => {
      btn.addEventListener('click', () => {
        swal(options).then(callback); // <-- add the `.then(callback)`
      });
    });
  }
};

export { initSweetalert };
