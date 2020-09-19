class ApplicationController < ActionController::Base
  before_action do
    @token = user_signed_in? ? Warden::JWTAuth::UserEncoder.new.call(current_user, :user, nil).first : nil
  end
end
