# frozen_string_literal: true

class CalcReflex < ApplicationReflex
  def sum
    cable_ready.text_content("#result", text: params[:multiplier].to_i * element.value.to_i)
    morph :nothing
  end
end
