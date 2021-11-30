import 'controllers'
import 'stylesheets/application.scss'
import 'channels'
import * as Turbo from '@hotwired/turbo'
import Rails from 'mrujs'
import CableReady from 'cable_ready'
import { CableCar } from 'mrujs/plugins'

window.Turbo = Turbo
Rails.start({
  plugins: [new CableCar(CableReady)]
})
