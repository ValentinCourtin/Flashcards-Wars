import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="validates"
export default class extends Controller {
  connect() {
    console.log("coucou")
  }
}
