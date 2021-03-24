import { Controller } from 'stimulus'
import CableReady from 'cable_ready'

export default class extends Controller {
  fetch () {
    fetch('/fetch.json', {
      headers: { 'X-Requested-With': 'XMLHttpRequest' }
    })
      .then(response => response.json())
      .then(data => CableReady.perform(data))
  }
}
