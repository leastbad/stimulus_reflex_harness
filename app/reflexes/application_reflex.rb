# frozen_string_literal: true

class ApplicationReflex < StimulusReflex::Reflex
  delegate :current_user, to: :connection
  delegate :current_account, to: :connection
end
