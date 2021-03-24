import 'controllers'
import 'stylesheets/application.scss'
import 'channels'
import Rails from '@rails/ujs'
Rails.start()

import CableReady from 'cable_ready'
import { processElements } from 'cable_ready/javascript/utils'

CableReady.DOMOperations.jazzHands = operation => {
  processElements(operation, element => {
    console.log('Jazz hands!')
  })
}
