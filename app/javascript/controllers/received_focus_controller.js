import { Controller } from 'stimulus'

export default class extends Controller {
  connect () {
    this.element.addEventListener('focusin', this.handler)
  }

  disconnect () {
    this.element.removeEventListener('focusin', this.handler)
  }

  handler = () => {
    this.element.style.backgroundColor = 'lightgreen'
  }
}
