import { Controller } from 'stimulus'

export default class extends Controller {
  static values = {
    operation: String,
    document: Boolean,
    window: Boolean
  }

  initialize () {
    if (this.documentValue) this.target = document
    if (this.windowValue) this.target = window
    if (!this.documentValue && !this.windowValue) this.target = this.element
    this.operation = this.operationValue.replaceAll('_', '-')
  }

  connect () {
    this.target.addEventListener(
      `cable-ready:before-${this.operation}`,
      this.handler
    )
  }

  disconnect () {
    this.target.removeEventListener(
      `cable-ready:before-${this.operation}`,
      this.handler
    )
  }

  handler = event => {
    event.detail.cancel = true
    document.getElementById(`${this.operationValue}-cancelled`).innerHTML =
      "<i class='fas fa-check'></i>"
    this.target.removeEventListener(
      `cable-ready:before-${this.operation}`,
      this.handler
    )
  }
}
