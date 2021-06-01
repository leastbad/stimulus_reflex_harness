# frozen_string_literal: true

CableReady.configure do |config|
  # Enable/disable exiting / warning when the sanity checks fail options:
  # `:exit` or `:warn` or `:ignore`

  # config.on_failed_sanity_checks = :exit

  # Enable/disable exiting / warning when there's a new CableReady release
  # `:exit` or `:warn` or `:ignore`

  # config.on_new_version_available = :exit

  # Define your own custom operations
  # https://cableready.stimulusreflex.com/customization#custom-operations

  config.add_operation_name :jazz_hands

  config.verifier_key = "d733b96b7f6eca8004d18c7e809f85f44cb28384c64eed05e0e809d7f0695fb33bf86f23e3c94c601101124b3deb92eac2dd3e3c9daa95bc854e03a9f4875649"
end