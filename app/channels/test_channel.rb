class TestChannel < ApplicationCable::Channel

  # this exists to demonstrate how other, non-SR channels can get in on the authentication action

  def subscribed
    super
    stream_from "test"
  end
end
