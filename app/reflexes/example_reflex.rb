# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  def test
    puts "My name is #{current_user}!"
  end
end
