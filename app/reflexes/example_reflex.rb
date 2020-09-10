# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  def test
    Project.create :name => Faker::Name.name
    puts "We're live!"
  end
end
