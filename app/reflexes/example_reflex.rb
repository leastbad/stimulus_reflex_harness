# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def test
    puts "We're live!"
    morph "#target1", "<div id=\"target1\"><span>Yes, it will.</span></div>"
    morph "#target2", "<div id=\"target2\"><span>Very well, indeed.</span></div>"
    morph "#target3", "Probably?"
  end
end
