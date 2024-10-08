import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modals"
export default class extends Controller {
  static targets = ["wheel", "win", "background", "selection", "choice", "explosion"]
  static values = {
    audioUrl: String
  }

  connect() {
    console.log(this.audioUrlValue);

    setTimeout(() => {
      this.createExplosion();
      this.hideWheel();
    }, 1500);

    setTimeout(() => {
      this.explosionTarget.style.display = "none"
      this.showWin();
    }, 3500);

  }

  hideWheel() {
    this.wheelTarget.style.display = "none"
  }
  showWin() {
    this.winTarget.style.display = "block"
    const audio = new Audio(this.audioUrlValue)
    console.log(audio);

    audio.play()
      .catch(error => {
        console.log(error);

      })
  }


  changeContent(event) {
    this.selectionTarget.style.display = "none"
    this.choiceTarget.style.display = "block"
  }

  createExplosion() {
    this.explosionTarget.classList.remove("explosion")
    this.explosionTarget.classList.add("show-explosion")

  }




}
