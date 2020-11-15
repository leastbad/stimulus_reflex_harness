# frozen_string_literal: true

class WidgetsReflex < ApplicationReflex

  def rerender_form
    morph "#widgets_form", WidgetsController.render(partial: "widgets/form", locals: {widget: Widget.new})
  end

end
