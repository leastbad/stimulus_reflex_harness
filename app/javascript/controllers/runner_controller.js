import ApplicationController from './application_controller'

export default class extends ApplicationController {
  connect () {
    super.connect()
    console.log('new instance')
    this.element.addEventListener('stimulus-reflex:before', event =>
      console.log(event)
    )
    this.element.addEventListener('stimulus-reflex:after', event =>
      console.log(event)
    )
  }

  runtest (e) {
    this.stimulate('Runner#test', e.target).then(payload => {
      const { data, element, event } = payload
      const { attrs, reflexId } = data
      console.log(data, element, event, attrs, reflexId)
    })
  }

  beforeTest (element) {
    console.log('beforeTest', element)
  }

  testSuccess (element) {
    console.log('testSuccess', element)
  }

  afterTest (element) {
    console.log('afterTest', element)
  }
}
