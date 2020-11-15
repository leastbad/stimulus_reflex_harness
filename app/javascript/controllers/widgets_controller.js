import ApplicationController from './application_controller'

export default class extends ApplicationController {
  connect () {
    super.connect()
    this.authenticity_token = this.element.querySelector(
      'input[type="hidden"][name="authenticity_token"]'
    )
  }

  beforeRerenderForm = () => {
    this.token = this.authenticity_token.value
  }

  afterRerenderForm = () => {
    this.authenticity_token.value = this.token
  }
}
