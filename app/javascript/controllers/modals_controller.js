import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modals"
export default class extends Controller {
  static targets = ["wheel", "win", "background"]

  connect() {

    setTimeout(() => {
      this.hideWheel();
      this.showWin();
    }, 3000);
  }

  hideWheel() {
    this.wheelTarget.style.display = "none"
  }
  showWin() {
    this.winTarget.style.display = "block"
  }

  blurBackground() {
    this.backgroundTarget.classList.add('blur-background')
  }
}
