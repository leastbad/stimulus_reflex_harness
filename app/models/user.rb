class User < ApplicationRecord
  # it's apparently really important that you don't use a Null strategy for anything real
  # https://github.com/waiting-for-dev/devise-jwt
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :jwt_authenticatable, jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null
end
