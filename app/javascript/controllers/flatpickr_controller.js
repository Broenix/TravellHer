import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";


// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
      enableTime: true,
      dateFormat: "m/d/Y - h:i",
      // more options available on the documentation!
    });
  }
}
