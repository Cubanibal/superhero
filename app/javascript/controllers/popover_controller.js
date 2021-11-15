import * as bootstrap from 'bootstrap'

import { Controller } from 'stimulus'; 
export default class extends Controller {

  connect() {
    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
      return new bootstrap.Popover(popoverTriggerEl)
    })
  }
}
Now, initialize the controllers in an HTML file where you will be including a tooltip or popover:
<div data-controller="tooltip">
  Anything
</div>
<div data-controller="popover">
  Anything
</div>
