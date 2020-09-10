class ApplicationController < ActionController::Base
  include SetCurrentRequestDetails
  include CurrentHelper
end
