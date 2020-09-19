# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  def test
    puts "My email is #{current_user.email}!"
  end
end
