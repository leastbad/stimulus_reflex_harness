import { Controller } from 'stimulus'

export default class extends Controller {
  initialize () {
    console.log('initialize')
  }
  connect () {
    console.log('connect')
  }
  disconnect () {
    console.log('disconnect')
  }
}
