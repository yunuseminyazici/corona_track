import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  change(event) {
    this.element.textContent = "Hello World!"
  }
}
