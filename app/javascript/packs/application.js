import 'controllers'
import 'stylesheets/application.scss'
import 'channels'
import Rails from '@rails/ujs'
import * as Futurism from '@minthesize/futurism'
import consumer from '../channels/consumer'
Rails.start()
Futurism.initializeElements()
Futurism.createSubscription(consumer)
