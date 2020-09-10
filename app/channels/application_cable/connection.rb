module ApplicationCable
  class Connection < ActionCable::Connection::Base
    include SetCurrentRequestDetails

    identified_by :current_user, :current_account
    delegate :session, to: :request

    def connect
      self.current_user = find_verified_user
      set_request_details
      self.current_account = Current.account

      logger.add_tags "ActionCable", "User #{current_user.id}", "Account #{current_account.id}"
    end

    protected

    def find_verified_user
      if (current_user = env["warden"].user)
        current_user
      else
        reject_unauthorized_connection
      end
    end

    def user_signed_in?
      !!current_user
    end

    def set_current_tenant(account)
      ActsAsTenant.current_tenant = account
    end

  end
end
