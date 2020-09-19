import consumer from './consumer'

// this exists to demonstrate how other, non-SR channels can get in on the authentication action

consumer.subscriptions.create(
  {
    channel: 'TestChannel',
    token: document.querySelector('meta[name=action-cable-auth-token]').content
  },
  {
    connected () {
      console.log('Token accepted')
    },
    rejected () {
      console.log('Token rejected')
    }
  }
)
