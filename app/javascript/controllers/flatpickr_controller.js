import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";


// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
      enableTime: true,
      altInput: true,
      altFormat: "m/d/Y - h:i",
      dateFormat: "Y-m-d h:i",
      altInputClass: "test_lol",
      disableMobile: "true",
      // more options available on the documentation!
    });
  }
}
