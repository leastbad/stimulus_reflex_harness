module SetCurrentRequestDetails
  extend ActiveSupport::Concern

  included do |base|
    if base < ActionController::Base
      set_current_tenant_through_filter
      before_action :set_request_details
    end
  end

  def set_request_details
    Current.request_id = request.uuid
    Current.user_agent = request.user_agent
    Current.ip_address = request.ip
    Current.user = current_user
    Current.account ||= account_from_domain || account_from_subdomain || fallback_account

    set_current_tenant(Current.account)
  end

  def account_from_domain
    Account.find_by(domain: request.domain)
  end

  def account_from_subdomain
    return unless request.subdomains.size > 0
    Account.find_by(subdomain: request.subdomains.first)
  end

  def fallback_account
    return unless user_signed_in?
    current_user.accounts.order(created_at: :asc).first
  end
end
