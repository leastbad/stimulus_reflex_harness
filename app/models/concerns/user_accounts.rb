module UserAccounts
  extend ActiveSupport::Concern
  included do
    has_many :account_users, dependent: :destroy
    has_many :accounts, through: :account_users, dependent: :destroy
    has_many :owned_accounts, class_name: "Account", foreign_key: :owner_id, inverse_of: :owner, dependent: :destroy
    has_one :personal_account, -> { where(personal: true) }, class_name: "Account", foreign_key: :owner_id, inverse_of: :owner, dependent: :destroy
  end
end