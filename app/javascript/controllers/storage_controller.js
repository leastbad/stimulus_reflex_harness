import { Controller } from 'stimulus'

export default class extends Controller {
  static values = { id: Number, remove: Boolean }
  connect () {
    document.addEventListener(
      'cable-ready:after-set-storage-item',
      this.handler
    )
  }

  disconnect () {
    document.removeEventListener(
      'cable-ready:after-set-storage-item',
      this.handler
    )
  }

  handler = event => {
    if (this.idValue == event.detail.id)
      this.element.textContent =
        event.detail.type === 'session'
          ? sessionStorage.getItem(event.detail.key)
          : localStorage.getItem(event.detail.key)
    if (this.hasRemoveValue)
      event.detail.type === 'session'
        ? sessionStorage.removeItem(event.detail.key)
        : localStorage.removeItem(event.detail.key)
  }
}
