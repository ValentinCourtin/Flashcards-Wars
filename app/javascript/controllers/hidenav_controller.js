import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hidenav"
export default class extends Controller {
  connect() {
    let navbar = document.querySelector(".navbar.navbar-expand-sm.navbar-light.navbar-lewagon")
    navbar.remove();
  }
}
