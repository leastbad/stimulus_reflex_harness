# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection
  include CableReady::Broadcaster

  def test
    puts "We're live!"
    cable_ready["test"].notification(
      title: "You are the best.",
      options: {
        body: "How does it feel to be your parents' favourite?",
        icon: "https://source.unsplash.com/256x256",
        vibrate: [200, 200, 200],
        silent: false
      }
    )
    cable_ready.broadcast
  end
end
