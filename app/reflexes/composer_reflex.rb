# frozen_string_literal: true

class ComposerReflex < ApplicationReflex
  def preview
    morph "#preview", element.value
  end
end