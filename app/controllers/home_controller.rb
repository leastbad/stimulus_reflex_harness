class HomeController < ApplicationController
  include CableReady::Broadcaster
  
  # def index
  #   puts dom_id(User.first)
  # end

  # def fetch
  #   render operations: cable_car
  #     .inner_html(selector: "#users", html: "<span>winning</span>")
  #     .set_focus(selector: "#users")
  #     .ride
  # end

  def fetch
    render operations: cable_car
      .inner_html(selector: "#users", html: "<span>winning</span>")
      .set_focus(selector: "#users")
  end
end
