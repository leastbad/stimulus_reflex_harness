class User < ApplicationRecord
  include UserAccounts
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :name, presence: true
end
