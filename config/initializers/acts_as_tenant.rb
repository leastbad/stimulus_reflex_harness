# require 'acts_as_tenant/sidekiq'

ActsAsTenant.configure do |config|
  config.require_tenant = false
end