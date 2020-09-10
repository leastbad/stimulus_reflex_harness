class AccountUser < ApplicationRecord
  belongs_to :account
  belongs_to :user

  validates :user_id, uniqueness: {scope: :account_id}

  def account_owner?
    account.owner_id == user_id
  end
end
