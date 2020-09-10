class Current < ActiveSupport::CurrentAttributes
  attribute :user, :account, :request_id, :user_agent, :ip_address

  resets do
    @account_user = nil
  end
end
