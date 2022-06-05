# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def test
    puts "We're live!"
    cable_ready.invoke_method(receiver: "window", method: "alert", arguments: ["Hello, world!"]).broadcast
  end
end
