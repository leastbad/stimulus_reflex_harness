import { Controller } from 'stimulus'

export default class extends Controller {
  connect () {
    this.element.addEventListener('event1', this.handler)
  }

  disconnect () {
    this.element.removeEventListener('event1', this.handler)
  }

  handler = event => {
    this.element.textContent = JSON.stringify(event.detail)
  }
}
