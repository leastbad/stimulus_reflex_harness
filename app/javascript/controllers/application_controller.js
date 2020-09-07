import { Controller } from 'stimulus'
import StimulusReflex from 'stimulus_reflex'

export default class extends Controller {
  connect () {
    StimulusReflex.register(this)
    // console.log('application controller: connect')
  }

  beforeReflex (element, reflex) {
    // console.log('application controller: beforeReflex')
  }

  reflexSuccess (element, reflex, error) {}

  reflexError (element, reflex, error) {}

  afterReflex (element, reflex) {
    // console.log('application controller: afterReflex')
  }
}
