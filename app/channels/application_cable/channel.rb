module ApplicationCable
  class Channel < ActionCable::Channel::Base
    attr_accessor :current_user

    def subscribed
      authenticate_user!
    end

    private

    def authenticate_user!
      @current_user ||= decode_user params[:token]
      reject unless @current_user
      connection.current_user = @current_user
    end

    def decode_user(token)
      token == "xxx" ? "Steve" : nil
    end
    
  end
end
