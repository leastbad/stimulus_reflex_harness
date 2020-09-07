import ApplicationController from './application_controller'

export default class extends ApplicationController {
  connect () {
    super.connect()
    // console.log('example controller: connect')

    this.element.addEventListener('cable-ready:before-morph', e => {
      // console.log(e.detail)
    })

    this.element.addEventListener('stimulus-reflex:after', e => {
      console.log('event', e.detail)
    })
  }

  test = () => {
    const reflex = this.stimulate('Example#test')
    console.log(reflex.reflexId)
    reflex.then(payload => console.log('promise', payload))
  }

  beforeReflex (element, reflex) {
    super.beforeReflex()
    // console.log('example controller: beforeReflex', element, reflex)
  }

  afterReflex (element, reflex, error, reflexId) {
    super.afterReflex()
    console.log('callback', reflexId)
  }
}
