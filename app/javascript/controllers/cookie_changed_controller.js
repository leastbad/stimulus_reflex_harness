import { Controller } from 'stimulus'

export default class extends Controller {
  connect () {
    document.addEventListener('cable-ready:after-set-cookie', this.handler)
  }

  disconnect () {
    document.removeEventListener('cable-ready:after-set-cookie', this.handler)
  }

  handler = event => {
    this.element.textContent = document.cookie
  }
}
